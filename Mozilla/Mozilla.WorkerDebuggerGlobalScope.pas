unit Mozilla.WorkerDebuggerGlobalScope;

interface

type
  // Global=( WorkerDebugger),Exposed=WorkerDebugger
  JWorkerDebuggerGlobalScope = class external 'WorkerDebuggerGlobalScope' (JEventTarget)
  public
    global: Variant; { Throws } 
    onmessage: JEventHandler;
    function createSandbox(&name: String; prototype: Variant): Variant; { Throws } 
    procedure loadSubScript(url: String); overload; { Throws } 
    procedure loadSubScript(url: String; sandbox: Variant); overload; { Throws } 
    procedure enterEventLoop;
    procedure leaveEventLoop;
    procedure postMessage(message: String);
    procedure setImmediate(handler: JFunction); { Throws } 
    procedure reportError(message: String);
    function retrieveConsoleEvents: array of Variant; { Throws } 
    procedure setConsoleEventHandler(handler: JAnyCallback); { Throws } 
    procedure dump; overload;
    procedure dump(string: String); overload;
  end;

implementation

end.
