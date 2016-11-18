unit Mozilla.PaintRequestList;

interface

type
  JPaintRequestList = class external 'PaintRequestList'
  public
    length: Integer;
    function item(&index: Integer): JPaintRequest;
  end;

implementation

end.
