unit Mozilla.DOMQuad;

interface

type
  // Pref=layout.css.DOMQuad.enabled,Constructor( optional DOMPointInit p1 , optional DOMPointInit p2 , optional DOMPointInit p3 , optional DOMPointInit p4),Constructor( DOMRectReadOnly rect)
  JDOMQuad = class external 'DOMQuad'
  public
    p1: JDOMPoint; { SameObject } 
    p2: JDOMPoint; { SameObject } 
    p3: JDOMPoint; { SameObject } 
    p4: JDOMPoint; { SameObject } 
    bounds: JDOMRectReadOnly; { SameObject } 
  end;

implementation

end.
