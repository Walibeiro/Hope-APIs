unit Mozilla.SVGAnimationElement;

interface

type
  JSVGAnimationElement = class external 'SVGAnimationElement' (JSVGElement)
  public
    targetElement: JSVGElement;
    function getStartTime: Float; { Throws } 
    function getCurrentTime: Float;
    function getSimpleDuration: Float; { Throws } 
    procedure beginElement; { Throws } 
    procedure beginElementAt(offset: Float); { Throws } 
    procedure endElement; { Throws } 
    procedure endElementAt(offset: Float); { Throws } 
  end;

implementation

end.
