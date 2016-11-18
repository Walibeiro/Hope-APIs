unit Mozilla.ServiceWorker;

interface

type
  // Func=mozilla::dom::workers::ServiceWorkerVisible,Exposed=( Window , Worker)
  JServiceWorker = class external 'ServiceWorker' (JEventTarget)
  public
    scriptURL: JUSVString;
    state: JServiceWorkerState;
    onstatechange: JEventHandler;
    procedure postMessage(message: Variant); overload; { Throws } 
    procedure postMessage(message: Variant; transferable: array of JTransferable); overload; { Throws } 
  end;

  JServiceWorkerState = (swsInstalling, swsInstalled, swsActivating, swsActivated, swsRedundant);

implementation

end.
