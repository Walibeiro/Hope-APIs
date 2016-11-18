unit Mozilla.Client;

interface

type
  // Exposed=ServiceWorker
  JClient = class external 'Client'
  public
    url: JUSVString;
    frameType: JFrameType;
    id: String;
    procedure postMessage(message: Variant); overload; { Throws } 
    procedure postMessage(message: Variant; transfer: array of JTransferable); overload; { Throws } 
  end;

  // Exposed=ServiceWorker
  JWindowClient = class external 'WindowClient' (JClient)
  public
    visibilityState: JVisibilityState;
    focused: Boolean;
    function focus: WindowClient; { Throws,NewObject } 
    function navigate(url: JUSVString): WindowClient; { Throws,NewObject } 
  end;

  JFrameType = (ftAuxiliary, ftTop-level, ftNested, ftNone);

implementation

end.
