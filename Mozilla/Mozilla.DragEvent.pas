unit Mozilla.DragEvent;

interface

type
  // Constructor( DOMString type , optional DragEventInit eventInitDict)
  JDragEvent = class external 'DragEvent' (JMouseEvent)
  public
    dataTransfer: JDataTransfer;
    procedure initDragEvent(&type: String; canBubble: Boolean; cancelable: Boolean; aView: JWindow; aDetail: Integer; aScreenX: Integer; aScreenY: Integer; aClientX: Integer; aClientY: Integer; aCtrlKey: Boolean; aAltKey: Boolean; aShiftKey: Boolean; aMetaKey: Boolean; aButton: Integer; aRelatedTarget: JEventTarget; aDataTransfer: JDataTransfer);
  end;

  JDragEventInit = class external 'DragEventInit' (JMouseEventInit)
  public
    dataTransfer: JDataTransfer;
  end;

implementation

end.
