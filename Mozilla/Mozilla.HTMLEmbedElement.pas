unit Mozilla.HTMLEmbedElement;

interface

type
  // NeedResolve
  JHTMLEmbedElement = class external 'HTMLEmbedElement' (JHTMLElement)
  public
    src: String; { Pure,SetterThrows } 
    type: String; { Pure,SetterThrows } 
    width: String; { Pure,SetterThrows } 
    height: String; { Pure,SetterThrows } 
    align: String; { Pure,SetterThrows } 
    name: String; { Pure,SetterThrows } 
    function (arguments: Variant): Variant; { Throws } 
    function getSVGDocument: JDocument; { NeedsSubjectPrincipal } 
  end;

implementation

end.
