unit Mozilla.PresentationReceiver;

interface

type
  // Pref=dom.presentation.receiver.enabled
  JPresentationReceiver = class external 'PresentationReceiver'
  public
    connectionList: PresentationConnectionList; { SameObject,Throws } 
  end;

implementation

end.
