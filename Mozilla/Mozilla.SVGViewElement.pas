unit Mozilla.SVGViewElement;

interface

type
  JSVGViewElement = class external 'SVGViewElement' (JSVGElement)
  public
    viewTarget: JSVGStringList;
  end;

implementation

end.
