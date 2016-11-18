unit Mozilla.ServiceWorkerContainer;

interface

type
  // Func=ServiceWorkerContainer::IsEnabled,Exposed=Window
  JServiceWorkerContainer = class external 'ServiceWorkerContainer' (JEventTarget)
  public
    controller: JServiceWorker; { Unforgeable } 
    ready: ServiceWorkerRegistration; { SameObject,Throws } 
    oncontrollerchange: JEventHandler;
    onerror: JEventHandler;
    onmessage: JEventHandler;
    function register(scriptURL: JUSVString): ServiceWorkerRegistration; overload; { NewObject } 
    function register(scriptURL: JUSVString; options: JRegistrationOptions): ServiceWorkerRegistration; overload; { NewObject } 
    function getRegistration(documentURL: JUSVString = ): any; { NewObject } 
    function getRegistrations: array of ServiceWorkerRegistration; { NewObject } 
    function getScopeForUrl(url: String): String; { Throws,Pref=dom.serviceWorkers.testing.enabled } 
  end;

  JRegistrationOptions = class external 'RegistrationOptions'
  public
    scope: JUSVString;
  end;

implementation

end.
