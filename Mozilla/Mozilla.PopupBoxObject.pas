unit Mozilla.PopupBoxObject;

interface

type
  // Func=IsChromeOrXBL
  JPopupBoxObject = class external 'PopupBoxObject' (JBoxObject)
  const 
    ROLLUP_DEFAULT: Integer = 0;
    ROLLUP_CONSUME: Integer = 1;
    ROLLUP_NO_CONSUME: Integer = 2;
  public
    autoPosition: Boolean;
    popupState: String;
    triggerNode: JNode;
    anchorNode: JElement;
    alignmentPosition: String;
    alignmentOffset: Integer;
    procedure showPopup(srcContent: JElement; popupContent: JElement; xpos: Integer; ypos: Integer; popupType: String = ; anchorAlignment: String = ; popupAlignment: String = );
    procedure hidePopup(cancel: Boolean = False);
    procedure enableKeyboardNavigator(enableKeyboardNavigator: Boolean);
    procedure enableRollup(enableRollup: Boolean);
    procedure setConsumeRollupEvent(consume: Integer);
    procedure sizeTo(width: Integer; height: Integer);
    procedure moveTo(left: Integer; top: Integer);
    procedure openPopup(anchorElement: JElement; position: String = ; x: Integer; y: Integer; isContextMenu: Boolean; attributesOverride: Boolean; triggerEvent: JEvent); overload;
    procedure openPopup(anchorElement: JElement; position: String = ; x: Integer; y: Integer; isContextMenu: Boolean; attributesOverride: Boolean; triggerEvent: JEvent); overload;
    procedure openPopupAtScreen(x: Integer; y: Integer; isContextMenu: Boolean; triggerEvent: JEvent);
    procedure openPopupAtScreenRect(position: String = ; x: Integer; y: Integer; width: Integer; height: Integer; isContextMenu: Boolean; attributesOverride: Boolean; triggerEvent: JEvent); overload;
    procedure openPopupAtScreenRect(position: String = ; x: Integer; y: Integer; width: Integer; height: Integer; isContextMenu: Boolean; attributesOverride: Boolean; triggerEvent: JEvent); overload;
    function getOuterScreenRect: JDOMRect;
    procedure moveToAnchor(anchorElement: JElement; position: String = ; x: Integer; y: Integer; attributesOverride: Boolean); overload;
    procedure moveToAnchor(anchorElement: JElement; position: String = ; x: Integer; y: Integer; attributesOverride: Boolean); overload;
    procedure setConstraintRect(rect: JDOMRectReadOnly);
  end;

implementation

end.
