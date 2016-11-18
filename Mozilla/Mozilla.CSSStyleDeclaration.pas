unit Mozilla.CSSStyleDeclaration;

interface

type
  JCSSStyleDeclaration = class external 'CSSStyleDeclaration'
  public
    cssText: String; { SetterThrows } 
    length: Integer;
    parentRule: JCSSRule;
    function item(&index: Integer): String;
    function getPropertyValue(&property: String): String; { Throws } 
    function getPropertyCSSValue(&property: String): JCSSValue; { Throws } 
    function getPropertyPriority(&property: String): String;
    procedure setProperty(&property: String; value: String { TreatNullAs=EmptyString } ; priority: String =  { TreatNullAs=EmptyString } ); { Throws } 
    function removeProperty(&property: String): String; { Throws } 
    function getAuthoredPropertyValue(&property: String): String; { ChromeOnly,Throws } 
  end;

implementation

end.
