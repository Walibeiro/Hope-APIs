unit Mozilla.ServiceWorkerRegistration;

interface

type
  // Func=mozilla::dom::ServiceWorkerRegistration::Visible,Exposed=( Window , Worker)
  JServiceWorkerRegistration = class external 'ServiceWorkerRegistration' (JEventTarget)
  public
    installing: JServiceWorker; { Unforgeable } 
    waiting: JServiceWorker; { Unforgeable } 
    active: JServiceWorker; { Unforgeable } 
    scope: JUSVString;
    onupdatefound: JEventHandler;
    pushManager: JPushManager; { Throws,Exposed=( Window , Worker),Func=nsContentUtils::PushEnabled } 
    function update: void; { Throws,NewObject } 
    function unregister: boolean; { Throws,NewObject } 
  end;

implementation

end.
