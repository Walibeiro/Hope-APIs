unit Mozilla.Presentation;

interface

type
  // Pref=dom.presentation.enabled
  JPresentation = class external 'Presentation'
  public
    defaultRequest: JPresentationRequest; { Pref=dom.presentation.controller.enabled } 
    receiver: JPresentationReceiver; { SameObject,Pref=dom.presentation.receiver.enabled } 
  end;

implementation

end.
