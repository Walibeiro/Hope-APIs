unit Mozilla.SVGStyleElement;

interface

type
  JSVGStyleElement = class external 'SVGStyleElement' (JSVGElement)
  public
    xmlspace: String; { SetterThrows } 
    type: String; { SetterThrows } 
    media: String; { SetterThrows } 
    title: String; { SetterThrows } 
    scoped: Boolean; { SetterThrows } 
  end;

implementation

end.
