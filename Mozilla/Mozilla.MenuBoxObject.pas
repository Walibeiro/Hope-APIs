unit Mozilla.MenuBoxObject;

interface

type
  // Func=IsChromeOrXBL
  JMenuBoxObject = class external 'MenuBoxObject' (JBoxObject)
  public
    activeChild: JElement;
    openedWithKey: Boolean;
    procedure openMenu(openFlag: Boolean);
    function handleKeyPress(keyEvent: JKeyboardEvent): Boolean;
  end;

implementation

end.
