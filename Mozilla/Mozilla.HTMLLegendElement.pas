unit Mozilla.HTMLLegendElement;

interface

type
  JHTMLLegendElement = class external 'HTMLLegendElement' (JHTMLElement)
  public
    form: JHTMLFormElement;
    align: String; { SetterThrows } 
  end;

implementation

end.
