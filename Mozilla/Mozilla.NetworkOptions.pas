unit Mozilla.NetworkOptions;

interface

type
  JNetworkCommandOptions = class external 'NetworkCommandOptions'
  public
    id: Integer;
    cmd: String;
    ifname: String;
    ip: String;
    prefixLength: Integer;
    domain: String;
    dnses: array of String;
    gateway: String;
    gateways: array of String;
    mode: String;
    report: Boolean;
    enabled: Boolean;
    wifictrlinterfacename: String;
    internalIfname: String;
    externalIfname: String;
    enable: Boolean;
    ssid: String;
    security: String;
    key: String;
    prefix: String;
    link: String;
    interfaceList: array of String;
    wifiStartIp: String;
    wifiEndIp: String;
    usbStartIp: String;
    usbEndIp: String;
    dns1: String;
    dns2: String;
    threshold: Integer;
    startIp: String;
    endIp: String;
    serverIp: String;
    maskLength: String;
    preInternalIfname: String;
    preExternalIfname: String;
    curInternalIfname: String;
    curExternalIfname: String;
    ipaddr: Integer;
    mask: Integer;
    gateway_long: Integer;
    dns1_long: Integer;
    dns2_long: Integer;
    mtu: Integer;
  end;

  JNetworkResultOptions = class external 'NetworkResultOptions'
  public
    id: Integer;
    ret: Boolean;
    broadcast: Boolean;
    topic: String;
    reason: String;
    resultCode: Integer;
    resultReason: String;
    error: Boolean;
    enable: Boolean;
    result: Boolean;
    success: Boolean;
    curExternalIfname: String;
    curInternalIfname: String;
    reply: String;
    route: String;
    ipaddr_str: String;
    gateway_str: String;
    dns1_str: String;
    dns2_str: String;
    mask_str: String;
    server_str: String;
    vendor_str: String;
    lease: Integer;
    prefixLength: Integer;
    mask: Integer;
    ipaddr: Integer;
    gateway: Integer;
    dns1: Integer;
    dns2: Integer;
    server: Integer;
    netId: String;
    interfaceList: array of String;
    flag: String;
    macAddr: String;
    ipAddr: String;
  end;

implementation

end.
