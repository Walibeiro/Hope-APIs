unit W3C.WebMidi;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.HTML5;

type
  JMIDIPortType = String;
  JMIDIPortTypeHelper = strict helper for JMIDIPortType
    const Input = 'input';
    const Output = 'output';
  end;

  JMIDIPortDeviceState = String;
  JMIDIPortDeviceStateHelper = strict helper for JMIDIPortDeviceState
    const Disconnected = 'disconnected';
    const Connected = 'connected';
  end;

  JMIDIPortConnectionState = String;
  JMIDIPortConnectionStateHelper = strict helper for JMIDIPortConnectionState
    const Open = 'open';
    const Closed = 'closed';
    const Pending = 'pending';
  end;

  JMIDIPort = class external 'MIDIPort' (JEventTarget)
  public
    id: String;
    manufacturer: String;
    name: String;
    &type: JMIDIPortType;
    version: String;
    state: JMIDIPortDeviceState;
    connection: JMIDIPortConnectionState;
    onstatechange: TEventHandler;
    function open: JMIDIPort;
    function close: JMIDIPort;
  end;

  JMIDIInput = class external 'MIDIInput' (JMIDIPort)
  public
    onmidimessage: TEventHandler;
  end;

  JMIDIOutput = class external 'MIDIOutput' (JMIDIPort)
  public
    procedure send(data: array of Integer); overload;
    procedure send(data: array of Integer; timestamp: Float); overload;
    procedure clear;
  end;

  JMIDIMessageEventInit = class external 'MIDIMessageEventInit' (JEventInit)
  public
    receivedTime: Float;
    data: JUint8Array;
  end;

  JMIDIMessageEvent = class external 'MIDIMessageEvent' (JEvent)
  public
    receivedTime: Float;
    data: JUint8Array;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JMIDIMessageEventInit); overload;
  end;

  JMIDIConnectionEventInit = class external 'MIDIConnectionEventInit' (JEventInit)
  public
    port: JMIDIPort;
  end;

  JMIDIConnectionEvent = class external 'MIDIConnectionEvent' (JEvent)
  public
    port: JMIDIPort;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JMIDIConnectionEventInit); overload;
  end;

  JMIDIInputMap = class external 'MIDIInputMap'
// TODO   readonly maplike<DOMString, MIDIInput>;
  end;

  JMIDIOutputMap = class external 'MIDIOutputMap'
// TODO   readonly maplike<DOMString, MIDIOutput>;
  end;

  JMIDIAccess = class external 'MIDIAccess' (JEventTarget)
  public
    inputs: JMIDIInputMap;
    outputs: JMIDIOutputMap;
    onstatechange: TEventHandler;
    sysexEnabled: Boolean;
  end;

  JMIDIOptions = class external
  public
    sysex: Boolean;
  end;

  TMIDISuccessCallback = procedure (access: JMIDIAccess; options: JMIDIOptions);

  JNavigator = partial class external 'Navigator'
    procedure requestMIDIAccess; overload;
    procedure requestMIDIAccess(options: JMIDIOptions); overload;
  end;
