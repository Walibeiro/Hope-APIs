unit Mozilla.PresentationRequest;

interface

type
  // Constructor( DOMString url),Constructor( sequence < DOMString > urls),Pref=dom.presentation.controller.enabled
  JPresentationRequest = class external 'PresentationRequest' (JEventTarget)
  public
    onconnectionavailable: JEventHandler;
    function start: PresentationConnection; { Throws } 
    function reconnect(presentationId: String): PresentationConnection; { Throws } 
    function getAvailability: PresentationAvailability; { Throws } 
    function startWithDevice(deviceId: String): PresentationConnection; { ChromeOnly,Throws } 
  end;

implementation

end.
