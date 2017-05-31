unit W3C.MediaCapture;

interface

uses
  W3C.HTML5, W3C.MediaCaptureAndStreams;

type
  JHTMLInputElement = partial class external 'HTMLInputElement'
  public
    capture: Boolean;
  end;

  JHTMLMediaElement = partial class external 'HTMLMediaElement'
  public
    function captureStream: JMediaStream;
  end;

  JHTMLCanvasElement = partial class external 'HTMLCanvasElement'
  public
    function captureStream: JMediaStream; overload;
    function captureStream(frameRate: Float): JMediaStream; overload;
  end;

  JCanvasCaptureMediaStreamTrack = class external 'CanvasCaptureMediaStreamTrack' (JMediaStreamTrack)
  public
    canvas: JHTMLCanvasElement;
    procedure requestFrame;
  end;