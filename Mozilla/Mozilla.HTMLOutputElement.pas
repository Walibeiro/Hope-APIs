unit Mozilla.HTMLOutputElement;

interface

type
  JHTMLOutputElement = class external 'HTMLOutputElement' (JHTMLElement)
  public
    htmlFor: JDOMTokenList; { PutForwards=value,Constant } 
    form: JHTMLFormElement;
    name: String; { SetterThrows,Pure } 
    type: String; { Constant } 
    defaultValue: String; { SetterThrows,Pure } 
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
