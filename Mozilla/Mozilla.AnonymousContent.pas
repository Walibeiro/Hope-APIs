unit Mozilla.AnonymousContent;

interface

type
  // ChromeOnly
  JAnonymousContent = class external 'AnonymousContent'
  public
    function getTextContentForElement(elementId: String): String; { Throws } 
    procedure setTextContentForElement(elementId: String; text: String); { Throws } 
    function getAttributeForElement(elementId: String; attributeName: String): String; { Throws } 
    procedure setAttributeForElement(elementId: String; attributeName: String; value: String); { Throws } 
    procedure removeAttributeForElement(elementId: String; attributeName: String); { Throws } 
    function getCanvasContext(elementId: String; contextId: String): JnsISupports; { Throws } 
    function setAnimationForElement(elementId: String; keyframes: Variant): JAnimation; overload; { Func=nsDocument::IsElementAnimateEnabled,Throws } 
    function setAnimationForElement(elementId: String; keyframes: Variant; options: JUnrestrictedDoubleOrKeyframeAnimationOptions): JAnimation; overload; { Func=nsDocument::IsElementAnimateEnabled,Throws } 
    procedure setCutoutRectsForElement(elementId: String; rects: array of JDOMRect); { Throws } 
  end;

implementation

end.
