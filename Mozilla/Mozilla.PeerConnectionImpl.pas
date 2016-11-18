unit Mozilla.PeerConnectionImpl;

interface

type
  // ChromeOnly,Constructor
  JPeerConnectionImpl = class external 'PeerConnectionImpl'
  public
    certificate: JRTCCertificate;
    fingerprint: String; { Constant } 
    localDescription: String;
    remoteDescription: String;
    iceConnectionState: JPCImplIceConnectionState;
    iceGatheringState: JPCImplIceGatheringState;
    signalingState: JPCImplSignalingState;
    id: String;
    peerIdentity: String;
    privacyRequested: Boolean;
    procedure initialize(observer: JPeerConnectionObserver; window: JWindow; iceServers: JRTCConfiguration; thread: JnsISupports); { Throws } 
    procedure createOffer; overload; { Throws } 
    procedure createOffer(options: JRTCOfferOptions); overload; { Throws } 
    procedure createAnswer; { Throws } 
    procedure setLocalDescription(action: Integer; sdp: String); { Throws } 
    procedure setRemoteDescription(action: Integer; sdp: String); { Throws } 
    procedure getStats(selector: JMediaStreamTrack); { Throws } 
    procedure addTrack(track: JMediaStreamTrack; streams: JMediaStream); { Throws } 
    procedure removeTrack(track: JMediaStreamTrack); { Throws } 
    procedure insertDTMF(sender: JRTCRtpSender; tones: String; duration: Integer = 100; interToneGap: Integer = 70); { Throws } 
    function getDTMFToneBuffer(sender: JRTCRtpSender): String; { Throws } 
    procedure replaceTrack(thisTrack: JMediaStreamTrack; withTrack: JMediaStreamTrack); { Throws } 
    procedure setParameters(track: JMediaStreamTrack); overload; { Throws } 
    procedure setParameters(track: JMediaStreamTrack; parameters: JRTCRtpParameters); overload; { Throws } 
    function getParameters(track: JMediaStreamTrack): JRTCRtpParameters; { Throws } 
    procedure closeStreams; { Throws } 
    function getLocalStreams: array of JMediaStream;
    function getRemoteStreams: array of JMediaStream;
    procedure selectSsrc(recvTrack: JMediaStreamTrack; ssrcIndex: Integer);
    procedure addIceCandidate(candidate: String; mid: String; level: Integer); { Throws } 
    procedure close;
    function pluginCrash(pluginId: Integer; &name: String): Boolean;
    function createDataChannel(label: String; protocol: String; &type: Integer; outOfOrderAllowed: Boolean; maxTime: Integer; maxNum: Integer; externalNegotiated: Boolean; stream: Integer): JDataChannel; { Throws } 
  end;

implementation

end.
