unit Mozilla.DOMRect;

interface

type
  // Constructor,Constructor( unrestricted double x , unrestricted double y , unrestricted double width , unrestricted double height)
  JDOMRect = class external 'DOMRect' (JDOMRectReadOnly)
  public
    x: Float;
    y: Float;
    width: Float;
    height: Float;
  end;

  JDOMRectReadOnly = class external 'DOMRectReadOnly'
  public
    x: Float;
    y: Float;
    width: Float;
    height: Float;
    top: Float;
    right: Float;
    bottom: Float;
    left: Float;
  end;

  JDOMRectInit = class external 'DOMRectInit'
  public
    x: Float;
    y: Float;
    width: Float;
    height: Float;
  end;

implementation

end.
