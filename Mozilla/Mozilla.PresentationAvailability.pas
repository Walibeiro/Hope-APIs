unit Mozilla.PresentationAvailability;

interface

type
  // Pref=dom.presentation.controller.enabled
  JPresentationAvailability = class external 'PresentationAvailability' (JEventTarget)
  public
    value: Boolean;
    onchange: JEventHandler;
  end;

implementation

end.
