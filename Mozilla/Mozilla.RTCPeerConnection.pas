unit Mozilla.RTCPeerConnection;

interface

type
  JRTCSessionDescriptionCallback = procedure(sdp: JRTCSessionDescription);

  JRTCPeerConnectionErrorCallback = procedure(error: JDOMError);

  JVoidFunction = procedure;

  JRTCStatsCallback = procedure(report: JRTCStatsReport);

  JRTCSignalingState = (stable, have-local-offer, have-remote-offer, have-local-pranswer, have-remote-pranswer, closed);

  JRTCIceGatheringState = (new, gathering, complete);

  JRTCIceConnectionState = (new, checking, connected, completed, failed, disconnected, closed);

  JRTCDataChannelInit = class external 'RTCDataChannelInit'
  public
    ordered: Boolean;
    maxRetransmitTime: Integer;
    maxRetransmits: Integer;
    protocol: String;
    negotiated: Boolean;
    id: Integer;
    outOfOrderAllowed: Boolean;
    maxRetransmitNum: Integer;
    preset: Boolean;
    stream: Integer;
  end;

  JRTCOfferAnswerOptions = class external 'RTCOfferAnswerOptions'
  public
  end;

  JRTCAnswerOptions = class external 'RTCAnswerOptions' (JRTCOfferAnswerOptions)
  public
  end;

  JRTCOfferOptions = class external 'RTCOfferOptions' (JRTCOfferAnswerOptions)
  public
    offerToReceiveVideo: Integer;
    offerToReceiveAudio: Integer;
    iceRestart: Boolean;
    mozDontOfferDataChannel: Boolean;
    mozBundleOnly: Boolean;
    mandatory: JDeprecatedRTCOfferOptionsSet;
    _optional: array of JDeprecatedRTCOfferOptionsSet;
  end;

  JDeprecatedRTCOfferOptionsSet = class external 'DeprecatedRTCOfferOptionsSet'
  public
    OfferToReceiveAudio: Boolean;
    OfferToReceiveVideo: Boolean;
    MozDontOfferDataChannel: Boolean;
    MozBundleOnly: Boolean;
  end;

  // Pref=media.peerconnection.enabled,JSImplementation=@mozilla.org/dom/peerconnection;1,Constructor( optional RTCConfiguration configuration , optional object ? constraints)
  JRTCPeerConnection = class external 'RTCPeerConnection' (JEventTarget)
  public
    localDescription: JRTCSessionDescription;
    remoteDescription: JRTCSessionDescription;
    signalingState: JRTCSignalingState;
    canTrickleIceCandidates: Boolean;
    iceGatheringState: JRTCIceGatheringState;
    iceConnectionState: JRTCIceConnectionState;
    peerIdentity: RTCIdentityAssertion; { Pref=media.peerconnection.identity.enabled } 
    idpLoginUrl: String; { Pref=media.peerconnection.identity.enabled } 
    id: String; { ChromeOnly } 
    onnegotiationneeded: JEventHandler;
    onicecandidate: JEventHandler;
    onsignalingstatechange: JEventHandler;
    onaddstream: JEventHandler;
    onaddtrack: JEventHandler;
    ontrack: JEventHandler;
    onremovestream: JEventHandler;
    oniceconnectionstatechange: JEventHandler;
    ondatachannel: JEventHandler;
    function generateCertificate(keygenAlgorithm: JAlgorithmIdentifier): RTCCertificate; { Throws,StaticClassOverride=mozilla::dom::RTCCertificate } 
    procedure setIdentityProvider(provider: String); overload; { Pref=media.peerconnection.identity.enabled } 
    procedure setIdentityProvider(provider: String; protocol: String); overload; { Pref=media.peerconnection.identity.enabled } 
    procedure setIdentityProvider(provider: String; protocol: String; username: String); overload; { Pref=media.peerconnection.identity.enabled } 
    function getIdentityAssertion: DOMString; { Pref=media.peerconnection.identity.enabled } 
    function createOffer: RTCSessionDescription; overload;
    function createOffer(options: JRTCOfferOptions): RTCSessionDescription; overload;
    function createAnswer: RTCSessionDescription; overload;
    function createAnswer(options: JRTCAnswerOptions): RTCSessionDescription; overload;
    function setLocalDescription(description: JRTCSessionDescription): void;
    function setRemoteDescription(description: JRTCSessionDescription): void;
    function addIceCandidate(candidate: JRTCIceCandidate): void;
    function getConfiguration: JRTCConfiguration;
    function getLocalStreams: array of JMediaStream; { UnsafeInPrerendering,Deprecated=RTCPeerConnectionGetStreams } 
    function getRemoteStreams: array of JMediaStream; { UnsafeInPrerendering,Deprecated=RTCPeerConnectionGetStreams } 
    function getStreamById(streamId: String): JMediaStream; { UnsafeInPrerendering } 
    procedure addStream(stream: JMediaStream);
    function addTrack(track: JMediaStreamTrack; stream: JMediaStream; moreStreams: JMediaStream): JRTCRtpSender;
    procedure removeTrack(sender: JRTCRtpSender);
    function getSenders: array of JRTCRtpSender;
    function getReceivers: array of JRTCRtpReceiver;
    procedure mozSelectSsrc(receiver: JRTCRtpReceiver; ssrcIndex: Integer); { ChromeOnly } 
    procedure close;
    function getStats: RTCStatsReport; overload;
    function getStats(selector: JMediaStreamTrack): RTCStatsReport; overload;
    function createDataChannel(label: String): JRTCDataChannel; overload;
    function createDataChannel(label: String; dataChannelDict: JRTCDataChannelInit): JRTCDataChannel; overload;
    function createOffer(successCallback: JRTCSessionDescriptionCallback; failureCallback: JRTCPeerConnectionErrorCallback): void; overload;
    function createOffer(successCallback: JRTCSessionDescriptionCallback; failureCallback: JRTCPeerConnectionErrorCallback; options: JRTCOfferOptions): void; overload;
    function createAnswer(successCallback: JRTCSessionDescriptionCallback; failureCallback: JRTCPeerConnectionErrorCallback): void;
    function setLocalDescription(description: JRTCSessionDescription; successCallback: JVoidFunction; failureCallback: JRTCPeerConnectionErrorCallback): void;
    function setRemoteDescription(description: JRTCSessionDescription; successCallback: JVoidFunction; failureCallback: JRTCPeerConnectionErrorCallback): void;
    function addIceCandidate(candidate: JRTCIceCandidate; successCallback: JVoidFunction; failureCallback: JRTCPeerConnectionErrorCallback): void;
    function getStats(selector: JMediaStreamTrack; successCallback: JRTCStatsCallback; failureCallback: JRTCPeerConnectionErrorCallback): void;
  end;

implementation

end.
