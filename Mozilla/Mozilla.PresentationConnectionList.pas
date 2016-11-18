unit Mozilla.PresentationConnectionList;

interface

type
  // Pref=dom.presentation.receiver.enabled
  JPresentationConnectionList = class external 'PresentationConnectionList' (JEventTarget)
  public
    connections: array of JPresentationConnection; { Frozen,Cached,Pure } 
    onconnectionavailable: JEventHandler;
  end;

implementation

end.
