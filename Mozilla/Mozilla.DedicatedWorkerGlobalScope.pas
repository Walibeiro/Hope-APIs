unit Mozilla.DedicatedWorkerGlobalScope;

interface

type
  // Global=( Worker , DedicatedWorker),Exposed=DedicatedWorker
  JDedicatedWorkerGlobalScope = class external 'DedicatedWorkerGlobalScope' (JWorkerGlobalScope)
  public
    onmessage: JEventHandler;
    procedure postMessage(message: Variant); overload; { Throws } 
    procedure postMessage(message: Variant; transfer: array of Variant); overload; { Throws } 
  end;

implementation

end.
