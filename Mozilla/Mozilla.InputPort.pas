unit Mozilla.InputPort;

interface

type
  // Pref=dom.inputport.enabled,ChromeOnly
  JInputPort = class external 'InputPort' (JEventTarget)
  public
    id: String;
    stream: JMediaStream;
    connected: Boolean;
    onconnect: JEventHandler;
    ondisconnect: JEventHandler;
  end;

implementation

end.
