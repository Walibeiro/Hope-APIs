unit Mozilla.Worker;

interface

type
  // Constructor( DOMString scriptURL),Func=mozilla::dom::workers::WorkerPrivate::WorkerAvailable,Exposed=( Window , DedicatedWorker , SharedWorker , System)
  JWorker = class external 'Worker' (JEventTarget)
  public
    onmessage: JEventHandler;
    procedure terminate;
    procedure postMessage(message: Variant); overload; { Throws } 
    procedure postMessage(message: Variant; transfer: array of Variant); overload; { Throws } 
  end;

  // Constructor( DOMString scriptURL),Func=mozilla::dom::workers::ChromeWorkerPrivate::WorkerAvailable,Exposed=( Window , DedicatedWorker , SharedWorker , System)
  JChromeWorker = class external 'ChromeWorker' (JWorker)
  end;

implementation

end.
