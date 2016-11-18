unit Mozilla.HTMLFieldSetElement;

interface

type
  JHTMLFieldSetElement = class external 'HTMLFieldSetElement' (JHTMLElement)
  public
    disabled: Boolean; { SetterThrows } 
    form: JHTMLFormElement;
    name: String; { SetterThrows } 
    type: String;
    elements: JHTMLCollection;
    willValidate: Boolean;
    validity: JValidityState;
    validationMessage: String;
    function checkValidity: Boolean;
    function reportValidity: Boolean;
    procedure setCustomValidity(error: String);
  end;

implementation

end.
