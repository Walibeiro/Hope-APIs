unit W3C.MediaSource;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.HTML5;

type
  JReadyState = String;
  JReadyStateHelper = strict helper for JReadyState
    const Closed = 'closed';
    const Open = 'open';
    const Ended = 'ended';
  end;

  JEndOfStreamError = String;
  JEndOfStreamErrorHelper = strict helper for JEndOfStreamError
    const Network = 'Network';
    const Decode = 'Decode';
  end;

  JAppendMode = String;
  JAppendModeHelper = strict helper for JAppendMode
    const Segments = 'segments';
    const Sequence = 'sequence';
  end;

  JSourceBuffer = class external 'SourceBuffer' (JEventTarget)
  public
    mode: JAppendMode;
    updating: Boolean;
    buffered: JTimeRanges;
    timestampOffset: Float;
    audioTracks: JAudioTrackList;
    videoTracks: JVideoTrackList;
    textTracks: JTextTrackList;
    appendWindowStart: Float;
    appendWindowEnd: Float;
    onupdatestart: TEventHandler;
    onupdate: TEventHandler;
    onupdateend: TEventHandler;
    onerror: TEventHandler;
    onabort: TEventHandler;
    procedure appendBuffer(data: JArrayBuffer); overload;
    procedure appendBuffer(data: JArrayBufferView); overload;
    procedure abort;
    procedure remove(start: Float; &end: Float);
  end;

  JSourceBufferList = class external 'SourceBufferList' (JEventTarget)
  private
    function GetItem(Index: Integer): JSourceBuffer; external array;
  public
    length: Integer;
    onaddsourcebuffer: TEventHandler;
    onremovesourcebuffer: TEventHandler;

    property Items[Index: Integer]: JSourceBuffer read GetItem;
  end;

  JMediaSource = class external 'MediaSource' (JEventTarget)
  public
    sourceBuffers: JSourceBufferList;
    activeSourceBuffers: JSourceBufferList;
    readyState: JReadyState;
    duration: Float;
    onsourceopen: TEventHandler;
    onsourceended: TEventHandler;
    onsourceclose: TEventHandler;
    constructor Create;
    function addSourceBuffer(&type: String): JSourceBuffer;
    procedure removeSourceBuffer(sourceBuffer: JSourceBuffer);
    procedure endOfStream; overload;
    procedure endOfStream(error: JEndOfStreamError); overload;
    procedure setLiveSeekableRange(start: Float; &end: Float);
    procedure clearLiveSeekableRange;
    function isTypeSupported(&type: String): Boolean;
  end;

  // Exposed = Window, DedicatedWorker, SharedWorker
  JURL = partial class external 'URL'
  public
    function createObjectURL(mediaSource: JMediaSource): String;
  end;

  JAudioTrack = partial class external 'AudioTrack'
  public
    sourceBuffer: JSourceBuffer;
  end;

  JVideoTrack = partial class external 'VideoTrack'
  public
    sourceBuffer: JSourceBuffer;
  end;

  JTextTrack = partial class external 'TextTrack'
  public
    sourceBuffer: JSourceBuffer;
  end;