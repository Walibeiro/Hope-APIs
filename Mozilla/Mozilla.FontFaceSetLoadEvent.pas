unit Mozilla.FontFaceSetLoadEvent;

interface

type
  JFontFaceSetLoadEventInit = class external 'FontFaceSetLoadEventInit' (JEventInit)
  public
    fontfaces: array of JFontFace;
  end;

  // Constructor( DOMString type , optional FontFaceSetLoadEventInit eventInitDict),Pref=layout.css.font-loading-api.enabled
  JFontFaceSetLoadEvent = class external 'FontFaceSetLoadEvent' (JEvent)
  public
    fontfaces: array of JFontFace; { Cached,Constant } 
  end;

implementation

end.
