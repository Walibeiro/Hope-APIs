unit W3C.PresentationAPI;

interface

uses
  ECMA.Promise, ECMA.TypedArray, W3C.DOM4, W3C.FileAPI;

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

  JPresentationConnectionAvailableEventInit = class external 'PresentationConnectionAvailableEventInit' (JEventInit)
  public
    connection: JPresentationConnection;
  end;

  JPresentationConnectionAvailableEvent = class external 'PresentationConnectionAvailableEvent' (JEvent)
  public
    connection: JPresentationConnection; { SameObject }
    constructor Create(&type: String; eventInitDict: JPresentationConnectionAvailableEventInit);
  end;

  TOnFulFilledPresentationConnection = procedure(response: JPresentationConnection);
  JPromisePresentationConnection = class external 'Promise' (JPromise)
  public
    class function resolve(value: JPresentationConnection): JPromisePresentationConnection;

    function &then(onFulfilled: TOnFulFilledPresentationConnection): JPromisePresentationConnection; overload;
    function &then(onFulfilled: TOnFulFilledPresentationConnection;
      onRejected: TOnRejected): JPromisePresentationConnection; overload;
  end;

  TOnFulFilledPresentationAvailability = procedure(response: JPresentationAvailability);
  JPromisePresentationAvailability = class external 'Promise' (JPromise)
  public
    class function resolve(value: JPresentationAvailability): JPromisePresentationAvailability;

    function &then(onFulfilled: TOnFulFilledPresentationAvailability): JPromisePresentationAvailability; overload;
    function &then(onFulfilled: TOnFulFilledPresentationAvailability;
      onRejected: TOnRejected): JPromisePresentationAvailability; overload;
  end;

  JPresentationRequest = class external 'PresentationRequest' (JEventTarget)
  public
    onconnectionavailable: TEventHandler;
    constructor Create(url: String); overload;
    constructor Create(urls: array of String); overload;
    function start: JPromisePresentationConnection;
    function reconnect(presentationId: String): JPromisePresentationConnection;
    function getAvailability: JPromisePresentationAvailability;
  end;

  JPresentationConnectionClosedEventInit = class external 'PresentationConnectionClosedEventInit' (JEventInit)
  public
    reason: JPresentationConnectionClosedReason;
    message: String;
  end;

  JPresentationConnectionClosedEvent = class external 'PresentationConnectionClosedEvent' (JEvent)
  public
    reason: JPresentationConnectionClosedReason; // required
    message: String;
    constructor Create(&type: String; eventInitDict: JPresentationConnectionClosedEventInit);
  end;

  JPresentationConnectionList = class external 'PresentationConnectionList' (JEventTarget)
  private
    FConnections: array of JPresentationConnection; external 'connections';
  public
    onconnectionavailable: TEventHandler;
    property Connections: array of JPresentationConnection read FConnections;
  end;

  TOnFulFilledPresentationConnectionList = procedure(response: JPresentationConnectionList);
  JPromisePresentationConnectionList = class external 'Promise' (JPromise)
  public
    class function resolve(value: JPresentationConnectionList): JPromisePresentationConnectionList;

    function &then(onFulfilled: TOnFulFilledPresentationConnectionList): JPromisePresentationConnectionList; overload;
    function &then(onFulfilled: TOnFulFilledPresentationConnectionList; onRejected: TOnRejected): JPromisePresentationConnectionList; overload;
  end;

  JPresentationReceiver = class external 'PresentationReceiver'
  private
    FConnectionList: JPromisePresentationConnectionList; { SameObject } external 'connectionList';
  public
    property connectionList: JPromisePresentationConnectionList read FConnectionList;
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