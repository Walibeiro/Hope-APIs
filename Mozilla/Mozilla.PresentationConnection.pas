unit Mozilla.PresentationConnection;

interface

type
  JPresentationConnectionState = (pcsConnecting, pcsConnected, pcsClosed, pcsTerminated);

  JPresentationConnectionBinaryType = (pcbtBlob, pcbtArraybuffer);

  // Pref=dom.presentation.enabled
  JPresentationConnection = class external 'PresentationConnection' (JEventTarget)
  public
    id: String; { Constant } 
    url: String;
    state: JPresentationConnectionState;
    onconnect: JEventHandler;
    onclose: JEventHandler;
    onterminate: JEventHandler;
    binaryType: JPresentationConnectionBinaryType;
    onmessage: JEventHandler;
    procedure send(data: String); { Throws } 
    procedure send(data: JBlob); { Throws } 
    procedure send(data: JArrayBuffer); { Throws } 
    procedure send(data: JArrayBufferView); { Throws } 
    procedure close; { Throws } 
    procedure terminate; { Throws } 
  end;

implementation

end.
