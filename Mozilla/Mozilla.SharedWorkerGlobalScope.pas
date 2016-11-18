unit Mozilla.SharedWorkerGlobalScope;

interface

type
  // Global=( Worker , SharedWorker),Exposed=SharedWorker
  JSharedWorkerGlobalScope = class external 'SharedWorkerGlobalScope' (JWorkerGlobalScope)
  public
    name: String;
    onconnect: JEventHandler;
  end;

implementation

end.
