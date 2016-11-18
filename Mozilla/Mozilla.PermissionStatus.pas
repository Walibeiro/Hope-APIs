unit Mozilla.PermissionStatus;

interface

type
  JPermissionState = (psGranted, psDenied, psPrompt);

  // Exposed=( Window)
  JPermissionStatus = class external 'PermissionStatus' (JEventTarget)
  public
    state: JPermissionState;
    onchange: JEventHandler;
  end;

implementation

end.
