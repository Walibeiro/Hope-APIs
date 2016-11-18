unit Mozilla.HTMLSelectElement;

interface

type
  JHTMLSelectElement = class external 'HTMLSelectElement' (JHTMLElement)
  public
    autofocus: Boolean; { SetterThrows,Pure } 
    autocomplete: String; { Pref=dom.forms.autocomplete.experimental,SetterThrows,Pure } 
    disabled: Boolean; { SetterThrows,Pure } 
    form: JHTMLFormElement; { Pure } 
    multiple: Boolean; { SetterThrows,Pure } 
    name: String; { SetterThrows,Pure } 
    required: Boolean; { SetterThrows,Pure } 
    size: Integer; { SetterThrows,Pure } 
    type: String; { Pure } 
    options: JHTMLOptionsCollection; { Constant } 
    length: Integer; { SetterThrows,Pure } 
    selectedOptions: JHTMLCollection;
    selectedIndex: Integer; { SetterThrows,Pure } 
    value: String; { Pure } 
    willValidate: Boolean;
    validity: JValidityState;
    validationMessage: String;
    openInParentProcess: Boolean; { ChromeOnly } 
    function item(&index: Integer): JElement;
    function namedItem(&name: String): JHTMLOptionElement;
    procedure add(element: Union; before: Union = ); { Throws } 
    procedure remove(&index: Integer);
    procedure (&index: Integer; option: JHTMLOptionElement); { Throws } 
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure setCustomValidity(error: String);
    procedure remove;
  end;

implementation

end.
