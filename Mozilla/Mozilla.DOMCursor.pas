unit Mozilla.DOMCursor;

interface

type
  // Exposed=( Window , Worker)
  JDOMCursor = class external 'DOMCursor' (JEventTarget)
  public
    done: Boolean;
    procedure continue; { Throws } 
  end;

implementation

end.
