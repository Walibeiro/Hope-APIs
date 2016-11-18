unit Mozilla.TextTrackList;

interface

type
  JTextTrackList = class external 'TextTrackList' (JEventTarget)
  public
    length: Integer;
    onchange: JEventHandler;
    onaddtrack: JEventHandler;
    onremovetrack: JEventHandler;
    mediaElement: JHTMLMediaElement; { ChromeOnly } 
    function (&index: Integer): JTextTrack;
    function getTrackById(id: String): JTextTrack;
  end;

implementation

end.
