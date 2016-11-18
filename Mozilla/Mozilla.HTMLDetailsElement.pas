unit Mozilla.HTMLDetailsElement;

interface

type
  // Pref=dom.details_element.enabled
  JHTMLDetailsElement = class external 'HTMLDetailsElement' (JHTMLElement)
  public
    open: Boolean; { SetterThrows } 
  end;

implementation

end.
