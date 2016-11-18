unit Mozilla.DOMPoint;

interface

type
  // Pref=layout.css.DOMPoint.enabled
  JDOMPointReadOnly = class external 'DOMPointReadOnly'
  public
    x: Float;
    y: Float;
    z: Float;
    w: Float;
  end;

  // Pref=layout.css.DOMPoint.enabled,Constructor( optional DOMPointInit point),Constructor( unrestricted double x , unrestricted double y , optional unrestricted double z = 0 , optional unrestricted double w = 1)
  JDOMPoint = class external 'DOMPoint' (JDOMPointReadOnly)
  public
    x: Float;
    y: Float;
    z: Float;
    w: Float;
  end;

  JDOMPointInit = class external 'DOMPointInit'
  public
    x: Float;
    y: Float;
    z: Float;
    w: Float;
  end;

implementation

end.
