unit Mozilla.Rect;

interface

type
  JRect = class external 'Rect'
  public
    top: JCSSPrimitiveValue;
    right: JCSSPrimitiveValue;
    bottom: JCSSPrimitiveValue;
    left: JCSSPrimitiveValue;
  end;

implementation

end.
