unit Mozilla.FontFaceSource;

interface

type
  // NoInterfaceObject
  JFontFaceSource = class external 'FontFaceSource'
  public
    fonts: JFontFaceSet; { Pref=layout.css.font-loading-api.enabled } 
  end;

implementation

end.
