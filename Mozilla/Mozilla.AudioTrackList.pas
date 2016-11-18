unit Mozilla.AudioTrackList;

interface

type
  // Pref=media.track.enabled
  JAudioTrackList = class external 'AudioTrackList' (JEventTarget)
  public
    length: Integer;
    onchange: JEventHandler;
    onaddtrack: JEventHandler;
    onremovetrack: JEventHandler;
    function (&index: Integer): JAudioTrack;
    function getTrackById(id: String): JAudioTrack;
  end;

implementation

end.
