unit Mozilla.SVGElement;

interface

type
  JSVGElement = class external 'SVGElement' (JElement)
  public
    id: String;
    className: JSVGAnimatedString; { Constant } 
    dataset: JDOMStringMap; { SameObject } 
    style: JCSSStyleDeclaration; { PutForwards=cssText,Constant } 
    ownerSVGElement: JSVGSVGElement;
    viewportElement: JSVGElement;
    oncopy: JEventHandler;
    oncut: JEventHandler;
    onpaste: JEventHandler;
    tabIndex: Integer; { SetterThrows,Pure } 
    procedure focus; { Throws } 
    procedure blur; { Throws } 
  end;

implementation

end.
