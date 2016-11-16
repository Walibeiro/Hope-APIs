unit W3C.PointerEvents;

interface

uses
  W3C.DOM4, W3C.UIEvents;

type
  JPointerEventInit = class external 'PointerEventInit' (JMouseEventInit)
  public
    pointerId: Integer;
    width: Float;
    height: Float;
    pressure: Float;
    tiltX: Integer;
    tiltY: Integer;
    pointerType: String;
    isPrimary: Boolean;
  end;

  // Constructor( DOMString type , optional PointerEventInit eventInitDict)
  JPointerEvent = class external 'PointerEvent' (JMouseEvent)
  public
    pointerId: Integer;
    width: Float;
    height: Float;
    pressure: Float;
    tiltX: Integer;
    tiltY: Integer;
    pointerType: String;
    isPrimary: Boolean;
  end;

  JElement = partial class external 'Element'
  public
    ongotpointercapture: TEventHandler;
    onlostpointercapture: TEventHandler;
    procedure setPointerCapture(pointerId: Integer);
    procedure releasePointerCapture(pointerId: Integer);
  end;

  JGlobalEventHandlers = partial class external 'GlobalEventHandlers'
  public
    onpointerdown: TEventHandler;
    onpointermove: TEventHandler;
    onpointerup: TEventHandler;
    onpointercancel: TEventHandler;
    onpointerover: TEventHandler;
    onpointerout: TEventHandler;
    onpointerenter: TEventHandler;
    onpointerleave: TEventHandler;
  end;

  JNavigator = partial class external 'Navigator'
  public
    maxTouchPoints: Integer;
  end;