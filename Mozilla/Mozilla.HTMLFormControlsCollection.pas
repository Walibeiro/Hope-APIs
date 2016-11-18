unit Mozilla.HTMLFormControlsCollection;

interface

type
  JHTMLFormControlsCollection = class external 'HTMLFormControlsCollection' (JHTMLCollection)
  public
    function namedItem(&name: String): Union;
  end;

implementation

end.
