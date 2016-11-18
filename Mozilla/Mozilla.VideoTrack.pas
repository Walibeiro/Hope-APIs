unit Mozilla.VideoTrack;

interface

type
  // Pref=media.track.enabled
  JVideoTrack = class external 'VideoTrack'
  public
    id: String;
    kind: String;
    label: String;
    language: String;
    selected: Boolean;
  end;

implementation

end.
