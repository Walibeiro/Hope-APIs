unit Mozilla.CanvasCaptureMediaStream;

interface

type
  // Pref=canvas.capturestream.enabled
  JCanvasCaptureMediaStream = class external 'CanvasCaptureMediaStream' (JMediaStream)
  public
    canvas: JHTMLCanvasElement;
    procedure requestFrame;
  end;

implementation

end.
