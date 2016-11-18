unit Mozilla.HTMLLabelElement;

interface

type
  JHTMLLabelElement = class external 'HTMLLabelElement' (JHTMLElement)
  public
    form: JHTMLFormElement;
    htmlFor: String;
    control: JHTMLElement;
  end;

implementation

end.
