unit Mozilla.TextTrackCueList;

interface

type
  JTextTrackCueList = class external 'TextTrackCueList'
  public
    length: Integer;
    function (&index: Integer): JVTTCue;
    function getCueById(id: String): JVTTCue;
  end;

implementation

end.
