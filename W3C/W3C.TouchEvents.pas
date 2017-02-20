unit W3C.TouchEvents;

interface

uses
  W3C.DOM4, W3C.HTML5, W3C.UIEvents;

type
  JTouch = class external 'Touch'
  public
    identifier: Integer;
    target: JEventTarget;
    screenX, screenY: Integer;
    clientX, clientY: Integer;
    pageX, pageY: Integer;
  end;

  JTouchList = class external 'TouchList'
  private
    function GetItems(index : Integer) : JTouch; external array;
  public
    length: Integer;
    function identifiedTouch(identifiers: Integer): JTouch;
    function item(&index: Integer): JTouch;

    property Items[index: Integer]: JTouch read GetItems; default;
  end;

  JTouchEvent = class external 'TouchEvent' (JUIEvent)
  public
    touches: JTouchList;
    targetTouches: JTouchList;
    changedTouches: JTouchList;
    altKey: Boolean;
    metaKey: Boolean;
    ctrlKey: Boolean;
    shiftKey: Boolean;
  end;

  JDocument = partial class external 'Document'
  public
    function createTouch(view: JWindowProxy; target: JEventTarget;
      identifier, pageX, pageY, screenX, screenY: Integer): JTouch;
    function createTouchList(touches: JTouch): JTouchList;
  end;