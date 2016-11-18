unit Mozilla.RGBColor;

interface

type
  JRGBColor = class external 'RGBColor'
  public
    red: JCSSPrimitiveValue;
    green: JCSSPrimitiveValue;
    blue: JCSSPrimitiveValue;
    alpha: JCSSPrimitiveValue;
  end;

implementation

end.
