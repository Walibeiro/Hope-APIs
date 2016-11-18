unit Mozilla.HTMLTextAreaElement;

interface

type
  JHTMLTextAreaElement = class external 'HTMLTextAreaElement' (JHTMLElement)
  public
    autofocus: Boolean; { SetterThrows,Pure } 
    cols: Integer; { SetterThrows,Pure } 
    disabled: Boolean; { SetterThrows,Pure } 
    form: JHTMLFormElement; { Pure } 
    maxLength: Integer; { SetterThrows,Pure } 
    minLength: Integer; { SetterThrows,Pure } 
    name: String; { SetterThrows,Pure } 
    placeholder: String; { SetterThrows,Pure } 
    readOnly: Boolean; { SetterThrows,Pure } 
    required: Boolean; { SetterThrows,Pure } 
    rows: Integer; { SetterThrows,Pure } 
    wrap: String; { SetterThrows,Pure } 
    type: String; { Constant } 
    defaultValue: String; { SetterThrows,Pure } 
    value: String; { TreatNullAs=EmptyString } 
    textLength: Integer;
    willValidate: Boolean;
    validity: JValidityState;
    validationMessage: String;
    selectionStart: Integer; { Throws } 
    selectionEnd: Integer; { Throws } 
    selectionDirection: String; { Throws } 
    controllers: JMozControllers; { Throws,ChromeOnly } 
    editor: JnsIEditor; { ChromeOnly } 
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure setCustomValidity(error: String);
    procedure select;
    procedure setRangeText(replacement: String); { Throws } 
    procedure setRangeText(replacement: String; start: Integer; &end: Integer; selectionMode: JSelectionMode = preserve); { Throws } 
    procedure setSelectionRange(start: Integer; &end: Integer); overload; { Throws } 
    procedure setSelectionRange(start: Integer; &end: Integer; direction: String); overload; { Throws } 
    procedure setUserInput(input: String); { ChromeOnly } 
  end;

implementation

end.
