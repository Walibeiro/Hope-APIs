unit Mozilla.PeerConnectionObserver;

interface

type
  // ChromeOnly,JSImplementation=@mozilla.org/dom/peerconnectionobserver;1,Constructor( RTCPeerConnection domPC)
  JPeerConnectionObserver = class external 'PeerConnectionObserver'
  public
    procedure onCreateOfferSuccess(offer: String);
    procedure onCreateOfferError(&name: Integer; message: String);
    procedure onCreateAnswerSuccess(answer: String);
    procedure onCreateAnswerError(&name: Integer; message: String);
    procedure onSetLocalDescriptionSuccess;
    procedure onSetRemoteDescriptionSuccess;
    procedure onSetLocalDescriptionError(&name: Integer; message: String);
    procedure onSetRemoteDescriptionError(&name: Integer; message: String);
    procedure onAddIceCandidateSuccess;
    procedure onAddIceCandidateError(&name: Integer; message: String);
    procedure onIceCandidate(level: Integer; mid: String; candidate: String);
    procedure onNegotiationNeeded;
    procedure onGetStatsSuccess; overload;
    procedure onGetStatsSuccess(report: JRTCStatsReportInternal); overload;
    procedure onGetStatsError(&name: Integer; message: String);
    procedure onReplaceTrackSuccess;
    procedure onReplaceTrackError(&name: Integer; message: String);
    procedure notifyDataChannel(channel: JDataChannel);
    procedure onStateChange(state: JPCObserverStateType);
    procedure onAddStream(stream: JMediaStream);
    procedure onRemoveStream(stream: JMediaStream);
    procedure onAddTrack(track: JMediaStreamTrack; streams: array of JMediaStream);
    procedure onRemoveTrack(track: JMediaStreamTrack);
    procedure onDTMFToneChange(trackId: String; tone: String);
  end;

implementation

end.
