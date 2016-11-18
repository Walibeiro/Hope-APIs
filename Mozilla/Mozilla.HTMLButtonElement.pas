unit Mozilla.HTMLButtonElement;

interface

type
  JHTMLButtonElement = class external 'HTMLButtonElement' (JHTMLElement)
  public
    autofocus: Boolean; { SetterThrows,Pure } 
    disabled: Boolean; { SetterThrows,Pure } 
    form: JHTMLFormElement; { Pure } 
    formAction: String; { SetterThrows,Pure } 
    formEnctype: String; { SetterThrows,Pure } 
    formMethod: String; { SetterThrows,Pure } 
    formNoValidate: Boolean; { SetterThrows,Pure } 
    formTarget: String; { SetterThrows,Pure } 
    name: String; { SetterThrows,Pure } 
    type: String; { SetterThrows,Pure } 
    value: String; { SetterThrows,Pure } 
    willValidate: Boolean;
    validity: JValidityState;
    validationMessage: String;
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure setCustomValidity(error: String);
  end;

implementation

end.
