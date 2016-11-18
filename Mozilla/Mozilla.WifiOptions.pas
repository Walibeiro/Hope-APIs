unit Mozilla.WifiOptions;

interface

type
  JWifiCommandOptions = class external 'WifiCommandOptions'
  public
    id: Integer;
    cmd: String;
    request: String;
  end;

  JWifiResultOptions = class external 'WifiResultOptions'
  public
    id: Integer;
    status: Integer;
    reply: String;
  end;

  JWifiCertServiceResultOptions = class external 'WifiCertServiceResultOptions'
  public
    id: Integer;
    status: Integer;
    usageFlag: Integer;
    nickname: String;
  end;

implementation

end.
