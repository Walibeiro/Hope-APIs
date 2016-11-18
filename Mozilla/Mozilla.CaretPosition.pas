unit Mozilla.CaretPosition;

interface

type
  JCaretPosition = class external 'CaretPosition'
  public
    offsetNode: JNode;
    offset: Integer;
    function getClientRect: JDOMRect;
  end;

implementation

end.
