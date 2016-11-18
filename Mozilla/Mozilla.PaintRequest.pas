unit Mozilla.PaintRequest;

interface

type
  JPaintRequest = class external 'PaintRequest'
  public
    clientRect: JDOMRect;
    reason: String;
  end;

implementation

end.
