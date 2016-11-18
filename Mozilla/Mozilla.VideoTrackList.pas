unit Mozilla.VideoTrackList;

interface

type
  // Pref=media.track.enabled
  JVideoTrackList = class external 'VideoTrackList' (JEventTarget)
  public
    length: Integer;
    selectedIndex: Integer;
    onchange: JEventHandler;
    onaddtrack: JEventHandler;
    onremovetrack: JEventHandler;
    function (&index: Integer): JVideoTrack;
    function getTrackById(id: String): JVideoTrack;
  end;

implementation

end.
