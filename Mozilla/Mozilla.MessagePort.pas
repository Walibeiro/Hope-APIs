unit Mozilla.MessagePort;

interface

type
  // Exposed=( Window , Worker , System)
  JMessagePort = class external 'MessagePort' (JEventTarget)
  public
    onmessage: JEventHandler;
    procedure postMessage(message: Variant); overload; { Throws } 
    procedure postMessage(message: Variant; transferable: array of JTransferable); overload; { Throws } 
    procedure start;
    procedure close;
  end;

implementation

end.
