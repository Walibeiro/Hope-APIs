unit Mozilla.AudioTrack;

interface

type
  // Pref=media.track.enabled
  JAudioTrack = class external 'AudioTrack'
  public
    id: String;
    kind: String;
    label: String;
    language: String;
    enabled: Boolean;
  end;

implementation

end.
