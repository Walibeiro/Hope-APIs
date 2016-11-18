unit Mozilla.SVGScriptElement;

interface

type
  JSVGScriptElement = class external 'SVGScriptElement' (JSVGElement)
  public
    type: String; { SetterThrows } 
    crossOrigin: String; { SetterThrows } 
  end;

implementation

end.
