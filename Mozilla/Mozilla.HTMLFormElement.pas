unit Mozilla.HTMLFormElement;

interface

type
  // OverrideBuiltins,LegacyUnenumerableNamedProperties
  JHTMLFormElement = class external 'HTMLFormElement' (JHTMLElement)
  public
    acceptCharset: String; { Pure,SetterThrows } 
    action: String; { Pure,SetterThrows } 
    autocomplete: String; { Pure,SetterThrows } 
    enctype: String; { Pure,SetterThrows } 
    encoding: String; { Pure,SetterThrows } 
    method: String; { Pure,SetterThrows } 
    name: String; { Pure,SetterThrows } 
    noValidate: Boolean; { Pure,SetterThrows } 
    target: String; { Pure,SetterThrows } 
    elements: JHTMLCollection; { Constant } 
    length: Integer; { Pure } 
    function (&index: Integer): JElement;
    function (&name: String): JnsISupports;
    procedure submit; { Throws } 
    procedure reset;
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure requestAutocomplete; { Pref=dom.forms.requestAutocomplete } 
  end;

implementation

end.
