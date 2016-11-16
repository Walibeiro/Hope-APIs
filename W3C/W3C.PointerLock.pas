unit W3C.PointerLock;

interface

uses
  W3C.DOM4;

type
  JElement = partial class external 'Element'
  public
    procedure requestPointerLock;
  end;

  JDocument = partial class external 'Document'
  public
    onpointerlockchange: TEventHandler;
    onpointerlockerror: TEventHandler;
    pointerLockElement: JElement;
    procedure exitPointerLock;
  end;

  JMouseEvent = partial class external 'MouseEvent'
  public
    movementX: Integer;
    movementY: Integer;
  end;

  JMouseEventInit = class external 'MouseEventInit'
  public
    movementX: Integer;
    movementY: Integer;
  end;