unit Mozilla.RTCConfiguration;

interface

type
  JRTCIceCredentialType = (password, token);

  JRTCIceServer = class external 'RTCIceServer'
  public
    urls: Union;
    url: String;
    username: String;
    credential: String;
    credentialType: JRTCIceCredentialType;
  end;

  JRTCIceTransportPolicy = (relay, all);

  JRTCBundlePolicy = (balanced, max-compat, max-bundle);

  JRTCConfiguration = class external 'RTCConfiguration'
  public
    iceServers: array of JRTCIceServer;
    iceTransportPolicy: JRTCIceTransportPolicy;
    bundlePolicy: JRTCBundlePolicy;
    peerIdentity: String;
    certificates: array of JRTCCertificate;
  end;

implementation

end.
