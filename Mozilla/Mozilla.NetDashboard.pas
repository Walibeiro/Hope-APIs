unit Mozilla.NetDashboard;

interface

type
  JSocketElement = class external 'SocketElement'
  public
    host: String;
    port: Integer;
    active: Boolean;
    tcp: Boolean;
    sent: Float;
    received: Float;
  end;

  JSocketsDict = class external 'SocketsDict'
  public
    sockets: array of JSocketElement;
    sent: Float;
    received: Float;
  end;

  JHttpConnInfo = class external 'HttpConnInfo'
  public
    rtt: Integer;
    ttl: Integer;
    protocolVersion: String;
  end;

  JHalfOpenInfoDict = class external 'HalfOpenInfoDict'
  public
    speculative: Boolean;
  end;

  JHttpConnectionElement = class external 'HttpConnectionElement'
  public
    host: String;
    port: Integer;
    spdy: Boolean;
    ssl: Boolean;
    active: array of JHttpConnInfo;
    idle: array of JHttpConnInfo;
    halfOpens: array of JHalfOpenInfoDict;
  end;

  JHttpConnDict = class external 'HttpConnDict'
  public
    connections: array of JHttpConnectionElement;
  end;

  JWebSocketElement = class external 'WebSocketElement'
  public
    hostport: String;
    msgsent: Integer;
    msgreceived: Integer;
    sentsize: Float;
    receivedsize: Float;
    encrypted: Boolean;
  end;

  JWebSocketDict = class external 'WebSocketDict'
  public
    websockets: array of JWebSocketElement;
  end;

  JDnsCacheEntry = class external 'DnsCacheEntry'
  public
    hostname: String;
    hostaddr: array of String;
    family: String;
    expiration: Float;
  end;

  JDNSCacheDict = class external 'DNSCacheDict'
  public
    entries: array of JDnsCacheEntry;
  end;

  JDNSLookupDict = class external 'DNSLookupDict'
  public
    address: array of String;
    error: String;
    answer: Boolean;
  end;

  JConnStatusDict = class external 'ConnStatusDict'
  public
    status: String;
  end;

implementation

end.
