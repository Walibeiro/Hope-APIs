unit Mozilla.MediaStream;

interface

type
  JMediaStreamConstraints = class external 'MediaStreamConstraints'
  public
    audio: Union;
    video: Union;
    picture: Boolean;
    fake: Boolean;
    peerIdentity: String;
  end;

  // Exposed=Window,Constructor,Constructor( MediaStream stream),Constructor( sequence < MediaStreamTrack > tracks)
  JMediaStream = class external 'MediaStream' (JEventTarget)
  public
    id: String;
    active: Boolean;
    onaddtrack: JEventHandler;
    currentTime: Float;
    function getAudioTracks: array of JAudioStreamTrack;
    function getVideoTracks: array of JVideoStreamTrack;
    function getTracks: array of JMediaStreamTrack;
    function getTrackById(trackId: String): JMediaStreamTrack;
    procedure addTrack(track: JMediaStreamTrack);
    procedure removeTrack(track: JMediaStreamTrack);
    function clone: JMediaStream;
  end;

implementation

end.
