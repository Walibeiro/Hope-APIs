unit Mozilla.RTCRtpSender;

interface

type
  JRTCPriorityType = (very-low, low, medium, high);

  JRTCDegradationPreference = (rtcdpMaintain-framerate, rtcdpMaintain-resolution, rtcdpBalanced);

  JRTCRtxParameters = class external 'RTCRtxParameters'
  public
    ssrc: Integer;
  end;

  JRTCFecParameters = class external 'RTCFecParameters'
  public
    ssrc: Integer;
  end;

  JRTCRtpEncodingParameters = class external 'RTCRtpEncodingParameters'
  public
    ssrc: Integer;
    rtx: JRTCRtxParameters;
    fec: JRTCFecParameters;
    active: Boolean;
    priority: JRTCPriorityType;
    maxBitrate: Integer;
    degradationPreference: JRTCDegradationPreference;
    rid: String;
    scaleResolutionDownBy: Float;
  end;

  JRTCRtpHeaderExtensionParameters = class external 'RTCRtpHeaderExtensionParameters'
  public
    uri: String;
    id: Integer;
    encrypted: Boolean;
  end;

  JRTCRtcpParameters = class external 'RTCRtcpParameters'
  public
    cname: String;
    reducedSize: Boolean;
  end;

  JRTCRtpCodecParameters = class external 'RTCRtpCodecParameters'
  public
    payloadType: Integer;
    mimeType: String;
    clockRate: Integer;
    channels: Integer;
    sdpFmtpLine: String;
  end;

  JRTCRtpParameters = class external 'RTCRtpParameters'
  public
    encodings: array of JRTCRtpEncodingParameters;
    headerExtensions: array of JRTCRtpHeaderExtensionParameters;
    rtcp: JRTCRtcpParameters;
    codecs: array of JRTCRtpCodecParameters;
  end;

  // Pref=media.peerconnection.enabled,JSImplementation=@mozilla.org/dom/rtpsender;1
  JRTCRtpSender = class external 'RTCRtpSender'
  public
    track: JMediaStreamTrack;
    dtmf: JRTCDTMFSender; { Pref=media.peerconnection.dtmf.enabled } 
    function setParameters: void; overload;
    function setParameters(parameters: JRTCRtpParameters): void; overload;
    function getParameters: JRTCRtpParameters;
    function replaceTrack(track: JMediaStreamTrack): void;
  end;

implementation

end.
