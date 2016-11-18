unit Mozilla.TouchList;

interface

type
  // Func=mozilla::dom::TouchList::PrefEnabled
  JTouchList = class external 'TouchList'
  public
    length: Integer; { Pure } 
    function item(&index: Integer): JTouch;
  end;

implementation

end.
