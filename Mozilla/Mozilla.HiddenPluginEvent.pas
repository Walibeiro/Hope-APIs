unit Mozilla.HiddenPluginEvent;

interface

type
  // Constructor( DOMString type , optional HiddenPluginEventInit eventInit),ChromeOnly
  JHiddenPluginEvent = class external 'HiddenPluginEvent' (JEvent)
  public
    tag: JPluginTag;
  end;

  JHiddenPluginEventInit = class external 'HiddenPluginEventInit' (JEventInit)
  public
    tag: JPluginTag;
  end;

implementation

end.
