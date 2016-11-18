unit Mozilla.HTMLParamElement;

interface

type
  JHTMLParamElement = class external 'HTMLParamElement' (JHTMLElement)
  public
    name: String; { SetterThrows,Pure } 
    value: String; { SetterThrows,Pure } 
    type: String; { SetterThrows,Pure } 
    valueType: String; { SetterThrows,Pure } 
  end;

implementation

end.
