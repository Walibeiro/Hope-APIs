unit Mozilla.BroadcastChannel;

interface

type
  // Constructor( DOMString channel),Exposed=( Window , Worker)
  JBroadcastChannel = class external 'BroadcastChannel' (JEventTarget)
  public
    name: String;
    onmessage: JEventHandler;
    procedure postMessage(message: Variant); { Throws } 
    procedure close;
  end;

implementation

end.
