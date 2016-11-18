unit Mozilla.ImageCapture;

interface

type
  // Pref=dom.imagecapture.enabled,Constructor( VideoStreamTrack track)
  JImageCapture = class external 'ImageCapture' (JEventTarget)
  public
    videoStreamTrack: JVideoStreamTrack;
    onphoto: JEventHandler;
    onerror: JEventHandler;
    procedure takePhoto; { Throws } 
  end;

implementation

end.
