unit Mozilla.RTCCertificate;

interface

type
  JRTCCertificateExpiration = class external 'RTCCertificateExpiration'
  public
    expires: JDOMTimeStamp; { EnforceRange } 
  end;

  // Pref=media.peerconnection.enabled
  JRTCCertificate = class external 'RTCCertificate'
  public
    expires: JDOMTimeStamp;
  end;

implementation

end.
