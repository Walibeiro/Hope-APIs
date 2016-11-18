unit Mozilla.UIEvent;

interface

type
  // Constructor( DOMString type , optional UIEventInit eventInitDict)
  JUIEvent = class external 'UIEvent' (JEvent)
  const 
    SCROLL_PAGE_UP: Integer = -32768;
    SCROLL_PAGE_DOWN: Integer = 32768;
  public
    view: JWindowProxy;
    detail: Integer;
    layerX: Integer;
    layerY: Integer;
    pageX: Integer;
    pageY: Integer;
    which: Integer;
    rangeParent: JNode;
    rangeOffset: Integer;
    cancelBubble: Boolean;
    isChar: Boolean;
    procedure initUIEvent(aType: String; aCanBubble: Boolean; aCancelable: Boolean; aView: JWindow; aDetail: Integer);
  end;

  JUIEventInit = class external 'UIEventInit' (JEventInit)
  public
    view: JWindow;
    detail: Integer;
  end;

  JEventModifierInit = class external 'EventModifierInit' (JUIEventInit)
  public
    ctrlKey: Boolean;
    shiftKey: Boolean;
    altKey: Boolean;
    metaKey: Boolean;
    modifierAltGraph: Boolean;
    modifierCapsLock: Boolean;
    modifierFn: Boolean;
    modifierFnLock: Boolean;
    modifierNumLock: Boolean;
    modifierOS: Boolean;
    modifierScrollLock: Boolean;
    modifierSymbol: Boolean;
    modifierSymbolLock: Boolean;
  end;

implementation

end.
