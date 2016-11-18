unit Mozilla.FlyWebPublish;

interface

type
  // Pref=dom.flyweb.enabled
  JFlyWebPublishedServer = class external 'FlyWebPublishedServer' (JEventTarget)
  public
    name: String;
    uiUrl: String;
    onclose: JEventHandler;
    onfetch: JEventHandler;
    onwebsocket: JEventHandler;
    procedure close;
  end;

  JFlyWebPublishOptions = class external 'FlyWebPublishOptions'
  public
    uiUrl: String;
  end;

implementation

end.
