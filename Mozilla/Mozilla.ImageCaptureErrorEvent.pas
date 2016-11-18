unit Mozilla.ImageCaptureErrorEvent;

interface

type
  // Pref=dom.imagecapture.enabled,Constructor( DOMString type , optional ImageCaptureErrorEventInit imageCaptureErrorInitDict)
  JImageCaptureErrorEvent = class external 'ImageCaptureErrorEvent' (JEvent)
  public
    imageCaptureError: JImageCaptureError;
  end;

  JImageCaptureErrorEventInit = class external 'ImageCaptureErrorEventInit' (JEventInit)
  public
    imageCaptureError: JImageCaptureError;
  end;

  // NoInterfaceObject
  JImageCaptureError = class external 'ImageCaptureError'
  const 
    FRAME_GRAB_ERROR: Integer = 1;
    SETTINGS_ERROR: Integer = 2;
    PHOTO_ERROR: Integer = 3;
    ERROR_UNKNOWN: Integer = 4;
  public
    code: Integer;
    message: String;
  end;

implementation

end.
