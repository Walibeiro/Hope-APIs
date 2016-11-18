unit W3C.WebRTC;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.Cryptography, W3C.FileAPI,
  W3C.MediaCaptureAndStreams, W3C.HighResolutionTime, W3C.WebWorkers;

type
  JRTCIceCredentialType = String;
  JRTCIceCredentialTypeHelper = strict helper for JRTCIceCredentialType
    const Password = 'password';
    const Token = 'token';
  end;

  JRTCIceTransportPolicy = String;
  JRTCIceTransportPolicyHelper = strict helper for JRTCIceTransportPolicy
    const Relay = 'relay';
    const All = 'all';
  end;

  JRTCBundlePolicy = String;
  JRTCBundlePolicyHelper = strict helper for JRTCBundlePolicy
    const Balanced = ',';
    const MaxCompat = 'max-compat';
    const MaxBundle = 'max-bundle';
  end;

  JRTCRtcpMuxPolicy = String;
  JRTCRtcpMuxPolicyHelper = strict helper for JRTCRtcpMuxPolicy
    const Negotiate = 'negotiate';
    const &Require = 'require';
  end;

  JRTCSignalingState = String;
  JRTCSignalingStateHelper = strict helper for JRTCSignalingState
    const Stable = 'stable';
    const HaveLocalOffer = 'have-local-offer';
    const HaveRemoteOffer = 'have-remote-offer';
    const HaveLocalPranswer = 'have-local-pranswer';
    const HaveRemotePranswer = 'have-remote-pranswer';
  end;

  JRTCIceGatheringState = String;
  JRTCIceGatheringStateHelper = strict helper for JRTCIceGatheringState
    const &New = 'new';
    const Gathering = 'gathering';
    const Complete = 'complete';
  end;

  JRTCPeerConnectionState = String;
  JRTCPeerConnectionStateHelper = strict helper for JRTCPeerConnectionState
    const &New = 'new';
    const Connecting = 'connecting';
    const Connected = 'connected';
    const Disconnected = 'disconnected';
    const Failed = 'failed';
    const Closed = 'closed';
  end;

  JRTCIceConnectionState = String;
  JRTCIceConnectionStateHelper = strict helper for JRTCIceConnectionState
    const &New = 'new';
    const Checking = 'checking';
    const Connected = 'connected';
    const Completed = 'completed';
    const Failed = 'failed';
    const Disconnected = 'disconnected';
    const Closed = 'closed';
  end;

  JRTCSdpType = String;
  JRTCSdpTypeHelper = strict helper for JRTCSdpType
    const Offer = 'offer';
    const Pranswer = 'pranswer';
    const Answer = 'answer';
    const Rollback = 'rollback';
  end;

  JRTCIceTransportState = String;
  JRTCIceTransportStateHelper = strict helper for JRTCIceTransportState
    const &New = 'new';
    const Checking = 'checking';
    const Connected = 'connected';
    const Completed = 'completed';
    const Failed = 'failed';
    const Disconnected = 'disconnected';
    const Closed = 'closed';
  end;

  JRTCIceRole = String;
  JRTCIceRoleHelper = strict helper for JRTCIceRole
    const Controlling = 'controlling';
    const Controlled = 'controlled';
  end;

  JRTCIceComponent = String;
  JRTCIceComponentHelper = strict helper for JRTCIceComponent
    const RTP = 'RTP';
    const RTCP = 'RTCP';
  end;

  JRTCIceServer = class external 'RTCIceServer'
  public
    urls: array of String;
    username: String;
    credential: String;
    credentialType: JRTCIceCredentialType;
  end;

  JRTCPriorityType = String;
  JRTCPriorityTypeHelper = strict helper for JRTCPriorityType
    const VeryLow = 'very-low';
    const Lo = 'low';
    const Medium = 'medium';
    const Hi = 'high';
  end;

  JRTCIceProtocol = String;
  JRTCIceProtocolHelper = strict helper for JRTCIceProtocol
    const UDP = 'udp';
    const TCP = 'tcp';
  end;

  JRTCIceTcpCandidateType = String;
  JRTCIceTcpCandidateTypeHelper = strict helper for JRTCIceTcpCandidateType
    const Active = 'active';
    const Passive = 'passive';
    const So = 'so';
  end;

  JRTCIceCandidateType = String;
  JRTCIceCandidateTypeHelper = strict helper for JRTCIceCandidateType
    const Host = 'host';
    const Srflx = 'srflx';
    const Prflx = 'prflx';
    const Relay = 'relay';
  end;

  JRTCDtxStatus = String;
  JRTCDtxStatusHelper = strict helper for JRTCDtxStatus
    const Disabled = 'disabled';
    const Enabled = 'enabled';
  end;

  JRTCDegradationPreference = String;
  JRTCDegradationPreferenceHelper = strict helper for JRTCDegradationPreference
    const MaintainFramerate = 'Maintain-framerate';
    const MaintainResolution = 'Maintain-resolution';
    const Balance = 'Balance';
  end;

  JRTCDataChannelState = String;
  JRTCDataChannelStateHelper = strict helper for JRTCDataChannelState
    const Connecting = 'connecting';
    const open = 'open';
    const Closing = 'closing';
    const Closed = 'closed';
  end;

  JRTCStatsType = String;
  JRTCStatsTypeHelper = strict helper for JRTCStatsType
    const InboundRTP = 'inboundrtp';
    const OutboundRTP = 'outboundrtp';
  end;

  JRTCRtpTransceiverDirection = String;
  JRTCRtpTransceiverDirectionHelper = strict helper for JRTCRtpTransceiverDirection
    const SendRecv = 'sendrecv';
    const SendOnly = 'sendonly';
    const RecvOnly = 'recvonly';
    const Inactive = 'inactive';
  end;

  JRTCDtlsTransportState = String;
  JRTCDtlsTransportStateHelper = strict helper for JRTCDtlsTransportState
    const &New = 'new';
    const Connecting = 'connecting';
    const Connected = 'connected';
    const Closed = 'closed';
    const Failed = 'failed';
  end;

  JRTCCertificate = class external 'RTCCertificate'
  public
    expires: JDOMTimeStamp;
    function getAlgorithm: TAlgorithmIdentifier;
  end;

  JRTCConfiguration = class external 'RTCConfiguration'
  public
    iceServers: array of JRTCIceServer;
    iceTransportPolicy: JRTCIceTransportPolicy;
    bundlePolicy: JRTCBundlePolicy;
    rtcpMuxPolicy: JRTCRtcpMuxPolicy;
    peerIdentity: String;
    certificates: array of JRTCCertificate;
    iceCandidatePoolSize: Integer;
  end;

  JRTCOfferAnswerOptions = class external 'RTCOfferAnswerOptions'
  public
    voiceActivityDetection: Boolean;
  end;

  JRTCOfferOptions = class external 'RTCOfferOptions' (JRTCOfferAnswerOptions)
  public
    iceRestart: Boolean;
  end;

  JRTCAnswerOptions = class external 'RTCAnswerOptions' (JRTCOfferAnswerOptions)
  public
  end;

  JRTCSessionDescriptionInit = class external 'RTCSessionDescriptionInit'
  public
    &type: JRTCSdpType;
    sdp: String;
  end;

  JRTCSessionDescription = class external 'RTCSessionDescription'
  public
    &type: JRTCSdpType;
    sdp: String;
    constructor Create(descriptionInitDict: JRTCSessionDescriptionInit);
  end;

  JRTCStatsReport = class external 'RTCStatsReport';

  JRTCDtlsTransport = partial class external 'RTCDtlsTransport';

  JRTCSctpTransport = class external 'RTCSctpTransport'
  public
    transport: JRTCDtlsTransport;
    maxMessageSize: Integer;
  end;

  JRTCIceCandidateInit = class external 'RTCIceCandidateInit'
  public
    candidate: String;
    sdpMid: String;
    sdpMLineIndex: Integer;
  end;

  JRTCIceCandidate = class external 'RTCIceCandidate'
  public
    candidate: String;
    sdpMid: String;
    sdpMLineIndex: Integer;
    foundation: String;
    priority: Integer;
    ip: String;
    protocol: JRTCIceProtocol;
    port: Integer;
    &type: JRTCIceCandidateType;
    tcpType: JRTCIceTcpCandidateType;
    relatedAddress: String;
    relatedPort: Integer;
    constructor Create(candidateInitDict: JRTCIceCandidateInit);
  end;

  JRTCIdentityAssertion = class external 'RTCIdentityAssertion'
  public
    idp: String;
    name: String;
    constructor Create(idp, name: String);
  end;

  JRTCIdentityProviderDetails = class external 'RTCIdentityProviderDetails'
  public
    domain: String;
    protocol: String;
  end;

  JRTCIdentityAssertionResult = class external 'RTCIdentityAssertionResult'
  public
    idp: JRTCIdentityProviderDetails;
    assertion: String;
  end;

  JRTCIdentityValidationResult = class external 'RTCIdentityValidationResult'
  public
    identity: String;
    contents: String;
  end;

  TRTCPeerConnectionErrorCallback = procedure(error: JDOMError);
  TRTCSessionDescriptionCallback = procedure(sdp: JRTCSessionDescription);
  TRTCStatsCallback = procedure(report: JRTCStatsReport);
  TGenerateAssertionCallback = function(contents, origin, usernameHint: String): JRTCIdentityAssertionResult;
  TValidateAssertionCallback = function(assertion, origin: String): JRTCIdentityValidationResult;

  JMediaStreamConstraints = class external 'MediaStreamConstraints'
  public
    peerIdentity: String;
  end;

  JMediaStreamTrack = partial class external 'MediaStreamTrack'
  public
    isolated: Boolean;
    onisolationchange: TEventHandler;
  end;

  JRTCDTMFSender = class external 'RTCDTMFSender' (JEventTarget)
  public
    ontonechange: TEventHandler;
    toneBuffer: String;
    duration: Integer;
    interToneGap: Integer;
    procedure insertDTMF(tones: String; duration: Integer = 100; interToneGap: Integer = 70);
  end;

  JRTCDTMFToneChangeEventInit = class external 'RTCDTMFToneChangeEventInit' (JEventInit)
  public
    tone: String;
  end;

  JRTCDTMFToneChangeEvent = class external 'RTCDTMFToneChangeEvent' (JEvent)
  public
    tone: String;
    constructor Create(&type: String; eventInitDict: JRTCDTMFToneChangeEventInit);
  end;

  JRTCRtpRtxParameters = class external 'RTCRtpRtxParameters'
  public
    ssrc: Integer;
  end;

  JRTCRtpFecParameters = class external 'RTCRtpFecParameters'
  public
    ssrc: Integer;
  end;

  JRTCRtcpParameters = class external 'RTCRtcpParameters'
  public
    cname: String;
    reducedSize: Boolean;
  end;

  JRTCRtpHeaderExtensionParameters = class external 'RTCRtpHeaderExtensionParameters'
  public
    uri: String;
    id: Integer;
    encrypted: Boolean;
  end;

  JRTCRtpCodecParameters = class external 'RTCRtpCodecParameters'
  public
    payloadType: Integer;
    mimeType: String;
    clockRate: Integer;
    channels: Integer;
    sdpFmtpLine: String;
  end;

  JRTCRtpCodecCapability = class external 'RTCRtpCodecCapability'
  public
    mimeType: String;
  end;

  JRTCRtpHeaderExtensionCapability = class external 'RTCRtpHeaderExtensionCapability'
  public
    uri: String;
  end;

  JRTCRtpCapabilities = class external 'RTCRtpCapabilities'
  public
    codecs: array of JRTCRtpCodecCapability;
    headerExtensions: array of JRTCRtpHeaderExtensionCapability;
  end;

  JRTCRtpEncodingParameters = class external 'RTCRtpEncodingParameters'
  public
    ssrc: Integer;
    rtx: JRTCRtpRtxParameters;
    fec: JRTCRtpFecParameters;
    dtx: JRTCDtxStatus;
    active: Boolean;
    priority: JRTCPriorityType;
    maxBitrate: Integer;
    maxFramerate: Integer;
    rid: String;
    scaleResolutionDownBy: Float;
  end;

  JRTCRtpParameters = class external 'RTCRtpParameters'
  public
    transactionId: String;
    encodings: array of JRTCRtpEncodingParameters;
    headerExtensions: array of JRTCRtpHeaderExtensionParameters;
    rtcp: JRTCRtcpParameters;
    codecs: array of JRTCRtpCodecParameters;
    degradationPreference: JRTCDegradationPreference;
  end;

  JRTCRtpSender = class external 'RTCRtpSender'
  public
    track: JMediaStreamTrack;
    transport: JRTCDtlsTransport;
    rtcpTransport: JRTCDtlsTransport;
    dtmf: JRTCDTMFSender;
    function getCapabilities(kind: String): JRTCRtpCapabilities;
    procedure setParameters; overload;
    procedure setParameters(parameters: JRTCRtpParameters); overload;
    function getParameters: JRTCRtpParameters;
    procedure replaceTrack(withTrack: JMediaStreamTrack);
  end;

  JRTCRtpContributingSource = class external 'RTCRtpContributingSource'
  public
    timestamp: TDOMHighResTimeStamp;
    source: Integer;
    audioLevel: Integer;
    voiceActivityFlag: Boolean;
  end;

  JRTCRtpReceiver = class external 'RTCRtpReceiver'
  public
    track: JMediaStreamTrack;
    transport: JRTCDtlsTransport;
    rtcpTransport: JRTCDtlsTransport;
    function getCapabilities(kind: String): JRTCRtpCapabilities;
    function getParameters: JRTCRtpParameters;
    function getContributingSources: array of JRTCRtpContributingSource;
  end;

  JRTCRtpTransceiverInit = class external 'RTCRtpTransceiverInit'
  public
    direction: JRTCRtpTransceiverDirection;
    streams: array of JMediaStream;
    sendEncodings: array of JRTCRtpEncodingParameters;
  end;

  JRTCRtpTransceiver = class external 'RTCRtpTransceiver'
  public
    mid: String;
    sender: JRTCRtpSender; { SameObject }
    receiver: JRTCRtpReceiver; { SameObject }
    stopped: Boolean;
    direction: JRTCRtpTransceiverDirection;
    procedure setDirection(direction: JRTCRtpTransceiverDirection);
    procedure stop;
    procedure setCodecPreferences(codecs: array of JRTCRtpCodecCapability);
  end;

  JRTCDataChannel = class external 'RTCDataChannel' (JEventTarget)
  public
    label: String;
    ordered: Boolean;
    maxPacketLifeTime: Integer;
    maxRetransmits: Integer;
    protocol: String;
    negotiated: Boolean;
    id: Integer;
    readyState: JRTCDataChannelState;
    bufferedAmount: Integer;
    bufferedAmountLowThreshold: Integer;
    onopen: TEventHandler;
    onbufferedamountlow: TEventHandler;
    onerror: TEventHandler;
    onclose: TEventHandler;
    onmessage: TEventHandler;
    binaryType: String;
    procedure close;
    procedure send(data: String); overload;
    procedure send(data: JBlob); overload;
    procedure send(data: JArrayBuffer); overload;
    procedure send(data: JArrayBufferView); overload;
  end;

  JRTCDataChannelInit = class external 'RTCDataChannelInit'
  public
    ordered: Boolean;
    maxPacketLifeTime: Integer;
    maxRetransmits: Integer;
    protocol: String;
    negotiated: Boolean;
    id: Integer;
  end;

  JRTCPeerConnection = class external 'RTCPeerConnection' (JEventTarget)
  public
    localDescription: JRTCSessionDescription;
    currentLocalDescription: JRTCSessionDescription;
    pendingLocalDescription: JRTCSessionDescription;
    remoteDescription: JRTCSessionDescription;
    currentRemoteDescription: JRTCSessionDescription;
    pendingRemoteDescription: JRTCSessionDescription;
    signalingState: JRTCSignalingState;
    iceGatheringState: JRTCIceGatheringState;
    iceConnectionState: JRTCIceConnectionState;
    connectionState: JRTCPeerConnectionState;
    canTrickleIceCandidates: Boolean;
    onnegotiationneeded: TEventHandler;
    onicecandidate: TEventHandler;
    onicecandidateerror: TEventHandler;
    onsignalingstatechange: TEventHandler;
    oniceconnectionstatechange: TEventHandler;
    onicegatheringstatechange: TEventHandler;
    onconnectionstatechange: TEventHandler;
    ontrack: TEventHandler;
    sctp: JRTCSctpTransport;
    ondatachannel: TEventHandler;
    peerIdentity: JRTCIdentityAssertion;
    idpLoginUrl: String;
    constructor Create; overload;
    constructor Create(configuration: JRTCConfiguration); overload;
    function createOffer: JRTCSessionDescriptionInit; overload;
    function createOffer(options: JRTCOfferOptions): JRTCSessionDescriptionInit; overload;
    function createAnswer: JRTCSessionDescriptionInit; overload;
    function createAnswer(options: JRTCAnswerOptions): JRTCSessionDescriptionInit; overload;
    procedure setLocalDescription(description: JRTCSessionDescriptionInit); overload;
    procedure setRemoteDescription(description: JRTCSessionDescriptionInit);
    procedure addIceCandidate(candidate: JRTCIceCandidate); overload;
    procedure addIceCandidate(candidate: JRTCIceCandidateInit); overload;
    function getConfiguration: JRTCConfiguration;
    procedure setConfiguration(configuration: JRTCConfiguration);
    procedure close;
    procedure createOffer(successCallback: TRTCSessionDescriptionCallback; failureCallback: TRTCPeerConnectionErrorCallback); overload;
    procedure createOffer(successCallback: TRTCSessionDescriptionCallback; failureCallback: TRTCPeerConnectionErrorCallback; options: JRTCOfferOptions); overload;
    procedure setLocalDescription(description: JRTCSessionDescriptionInit; successCallback: procedure; failureCallback: TRTCPeerConnectionErrorCallback); overload;
    procedure createAnswer(successCallback: TRTCSessionDescriptionCallback; failureCallback: TRTCPeerConnectionErrorCallback); overload;
    procedure setRemoteDescription(description: JRTCSessionDescriptionInit; successCallback: procedure; failureCallback: TRTCPeerConnectionErrorCallback); overload;
    procedure addIceCandidate(candidate: JRTCIceCandidate; successCallback: procedure; failureCallback: TRTCPeerConnectionErrorCallback); overload;
    procedure addIceCandidate(candidate: JRTCIceCandidateInit; successCallback: procedure; failureCallback: TRTCPeerConnectionErrorCallback); overload;
    procedure getStats(selector: JMediaStreamTrack; successCallback: TRTCStatsCallback; failureCallback: TRTCPeerConnectionErrorCallback);
    function generateCertificate(keygenAlgorithm: TAlgorithmIdentifier): JRTCCertificate;
    function getSenders: array of JRTCRtpSender;
    function getReceivers: array of JRTCRtpReceiver;
    function getTransceivers: array of JRTCRtpTransceiver;
    function addTrack(track: JMediaStreamTrack; streams: JMediaStream): JRTCRtpSender;
    procedure removeTrack(sender: JRTCRtpSender);
    function addTransceiver(trackOrKind: String): JRTCRtpTransceiver; overload;
    function addTransceiver(trackOrKind: JMediaStreamTrack): JRTCRtpTransceiver; overload;
    function addTransceiver(trackOrKind: String; init: JRTCRtpTransceiverInit): JRTCRtpTransceiver; overload;
    function addTransceiver(trackOrKind: JMediaStreamTrack; init: JRTCRtpTransceiverInit): JRTCRtpTransceiver; overload;
    function createDataChannel(label: String { TreatNullAs=EmptyString } ): JRTCDataChannel; overload;
    function createDataChannel(label: String { TreatNullAs=EmptyString } ; dataChannelDict: JRTCDataChannelInit): JRTCDataChannel; overload;
    function getStats: JRTCStatsReport; overload;
    function getStats(selector: JMediaStreamTrack): JRTCStatsReport; overload;
    procedure setIdentityProvider(provider: String); overload;
    procedure setIdentityProvider(provider: String; protocol: String); overload;
    procedure setIdentityProvider(provider: String; protocol: String; usernameHint: String); overload;
    function getIdentityAssertion: String;
  end;

  JRTCPeerConnectionIceEventInit = class external 'RTCPeerConnectionIceEventInit' (JEventInit)
  public
    candidate: JRTCIceCandidate;
    url: String;
  end;

  JRTCPeerConnectionIceEvent = class external 'RTCPeerConnectionIceEvent' (JEvent)
  public
    candidate: JRTCIceCandidate;
    url: String;
    constructor Create(&type: String; eventInitDict: JRTCPeerConnectionIceEventInit);
  end;

  JRTCPeerConnectionIceErrorEventInit = class external 'RTCPeerConnectionIceErrorEventInit' (JEventInit)
  public
    hostCandidate: String;
    url: String;
    errorCode: Integer;
    statusText: String;
  end;

  JRTCPeerConnectionIceErrorEvent = class external 'RTCPeerConnectionIceErrorEvent' (JEvent)
  public
    hostCandidate: String;
    url: String;
    errorCode: Integer;
    errorText: String;
    constructor Create(&type: String; eventInitDict: JRTCPeerConnectionIceErrorEventInit);
  end;

  JRTCIceCandidatePair = class external 'RTCIceCandidatePair'
  public
    local: JRTCIceCandidate;
    remote: JRTCIceCandidate;
  end;

  JRTCIceParameters = class external 'RTCIceParameters'
  public
    usernameFragment: String;
    password: String;
  end;

  JRTCIceTransport = class external 'RTCIceTransport'
  public
    role: JRTCIceRole;
    component: JRTCIceComponent;
    state: JRTCIceTransportState;
    gatheringState: JRTCIceGatheringState;
    onstatechange: TEventHandler;
    ongatheringstatechange: TEventHandler;
    onselectedcandidatepairchange: TEventHandler;
    function getLocalCandidates: array of JRTCIceCandidate;
    function getRemoteCandidates: array of JRTCIceCandidate;
    function getSelectedCandidatePair: JRTCIceCandidatePair;
    function getLocalParameters: JRTCIceParameters;
    function getRemoteParameters: JRTCIceParameters;
  end;

  JRTCDtlsTransport = class external 'RTCDtlsTransport'
  public
    transport: JRTCIceTransport;
    state: JRTCDtlsTransportState;
    onstatechange: TEventHandler;
    function getRemoteCertificates: array of JArrayBuffer;
  end;

  JRTCTrackEventInit = class external 'RTCTrackEventInit' (JEventInit)
  public
    receiver: JRTCRtpReceiver;
    track: JMediaStreamTrack;
    streams: array of JMediaStream;
    transceiver: JRTCRtpTransceiver;
  end;

  JRTCTrackEvent = class external 'RTCTrackEvent' (JEvent)
  public
    receiver: JRTCRtpReceiver;
    track: JMediaStreamTrack;
    transceiver: JRTCRtpTransceiver;
    constructor Create(&type: String; eventInitDict: JRTCTrackEventInit);
  end;

  JRTCDataChannelEventInit = class external 'RTCDataChannelEventInit' (JEventInit)
  public
    channel: JRTCDataChannel;
  end;

  JRTCDataChannelEvent = class external 'RTCDataChannelEvent' (JEvent)
  public
    channel: JRTCDataChannel;
    constructor Create(&type: String; eventInitDict: JRTCDataChannelEventInit);
  end;

  JRTCStats = class external 'RTCStats'
  public
    timestamp: TDOMHighResTimeStamp;
    &type: JRTCStatsType;
    id: String;
  end;

  JRTCRTPStreamStats = class external 'RTCRTPStreamStats' (JRTCStats)
  public
    ssrc: Integer;
    remoteId: String;
  end;

  JRTCInboundRTPStreamStats = class external 'RTCInboundRTPStreamStats' (JRTCRTPStreamStats)
  public
    packetsReceived: Integer;
    bytesReceived: Integer;
  end;

  JRTCOutboundRTPStreamStats = class external 'RTCOutboundRTPStreamStats' (JRTCRTPStreamStats)
  public
    packetsSent: Integer;
    bytesSent: Integer;
  end;

  JRTCIdentityProvider = class external 'RTCIdentityProvider'
  public
    generateAssertion: TGenerateAssertionCallback;
    validateAssertion: TValidateAssertionCallback;
  end;

  // Exposed = RTCIdentityProviderGlobalScope
  JRTCIdentityProviderRegistrar = class external 'RTCIdentityProviderRegistrar'
  public
    procedure register(idp: JRTCIdentityProvider);
  end;

  // Global, Exposed = RTCIdentityProviderGlobalScope
  JRTCIdentityProviderGlobalScope = class external 'RTCIdentityProviderGlobalScope' (JWorkerGlobalScope)
  public
    rtcIdentityProvider: JRTCIdentityProviderRegistrar;
  end;