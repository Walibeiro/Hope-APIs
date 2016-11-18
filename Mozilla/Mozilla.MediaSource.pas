unit Mozilla.MediaSource;

interface

type
  JMediaSourceReadyState = (msrsClosed, msrsOpen, msrsEnded);

  JMediaSourceEndOfStreamError = (mseoseNetwork, mseoseDecode);

  // Constructor,Func=mozilla::dom::MediaSource::Enabled
  JMediaSource = class external 'MediaSource' (JEventTarget)
  public
    sourceBuffers: JSourceBufferList;
    activeSourceBuffers: JSourceBufferList;
    readyState: JMediaSourceReadyState;
    duration: Float; { SetterThrows } 
    onsourceopen: JEventHandler;
    onsourceended: JEventHandler;
    onsourceclosed: JEventHandler;
    mozDebugReaderData: String; { ChromeOnly } 
    function addSourceBuffer(&type: String): JSourceBuffer; { NewObject,Throws } 
    procedure removeSourceBuffer(sourceBuffer: JSourceBuffer); { Throws } 
    procedure endOfStream; overload; { Throws } 
    procedure endOfStream(error: JMediaSourceEndOfStreamError); overload; { Throws } 
    procedure setLiveSeekableRange(start: Float; &end: Float); { Throws } 
    procedure clearLiveSeekableRange; { Throws } 
    function isTypeSupported(&type: String): Boolean;
  end;

implementation

end.
