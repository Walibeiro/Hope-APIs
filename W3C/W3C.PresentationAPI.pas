unit W3C.PresentationAPI;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.FileAPI;

type
  JBinaryType = String;
  JBinaryTypeHelper = strict helper for JBinaryType
    const Blob = 'blob';
    const Arraybuffer = 'arraybuffer';
  end;

  JPresentationConnectionState = String;
  JPresentationConnectionStateHelper = strict helper for JPresentationConnectionState
    const Connecting = 'connecting';
    const Connected = 'connected';
    const Closed = 'closed';
    const Terminated = 'terminated';
  end;

  JPresentationConnectionClosedReason = String;
  JPresentationConnectionClosedReasonHelper = strict helper for JPresentationConnectionClosedReason
    const Error = 'error';
    const Closed = 'closed';
    const Wentaway = 'wentaway';
  end;

  JPresentationAvailability = class external 'PresentationAvailability' (JEventTarget)
  public
    value: Boolean;
    onchange: TEventHandler;
  end;

  JPresentationConnection = class external 'PresentationConnection' (JEventTarget)
  public
    id: String;
    url: String;
    state: JPresentationConnectionState;
    onconnect: TEventHandler;
    onclose: TEventHandler;
    onterminate: TEventHandler;
    binaryType: JBinaryType;
    onmessage: TEventHandler;
    procedure close;
    procedure terminate;
    procedure send(message: String); overload;
    procedure send(data: JBlob); overload;
    procedure send(data: JArrayBuffer); overload;
    procedure send(data: JArrayBufferView); overload;
  end;

  // Constructor( DOMString type , PresentationConnectionAvailableEventInit eventInitDict)
  JPresentationConnectionAvailableEvent = class external 'PresentationConnectionAvailableEvent' (JEvent)
  public
    connection: JPresentationConnection; { SameObject }
  end;

  JPresentationConnectionAvailableEventInit = class external 'PresentationConnectionAvailableEventInit' (JEventInit)
  public
    connection: JPresentationConnection;
  end;

  JPresentationRequest = class external 'PresentationRequest' (JEventTarget)
  public
    onconnectionavailable: TEventHandler;
    constructor Create(url: String); overload;
    constructor Create(urls: array of String); overload;
    function start: JPresentationConnection;
    function reconnect(presentationId: String): JPresentationConnection;
    function getAvailability: JPresentationAvailability;
  end;

  // Constructor( DOMString type , PresentationConnectionClosedEventInit eventInitDict)
  JPresentationConnectionClosedEvent = class external 'PresentationConnectionClosedEvent' (JEvent)
  public
    reason: JPresentationConnectionClosedReason;
    message: String;
  end;

  JPresentationConnectionClosedEventInit = class external 'PresentationConnectionClosedEventInit' (JEventInit)
  public
    reason: JPresentationConnectionClosedReason;
    message: String;
  end;

  JPresentationConnectionList = class external 'PresentationConnectionList' (JEventTarget)
  public
    onconnectionavailable: TEventHandler;
  end;

  JPresentationReceiver = class external 'PresentationReceiver'
  public
    connectionList: JPresentationConnectionList; { SameObject }
  end;

  JPresentation = class external 'Presentation'
  public
    defaultRequest: JPresentationRequest;
    receiver: JPresentationReceiver; { SameObject }
  end;

  JNavigator = partial class external 'Navigator'
  public
    presentation: JPresentation; { SameObject }
  end;