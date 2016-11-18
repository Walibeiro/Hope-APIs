unit Mozilla.TrackEvent;

interface

type
  // Constructor( DOMString type , optional TrackEventInit eventInitDict)
  JTrackEvent = class external 'TrackEvent' (JEvent)
  public
    track: Union;
  end;

  JTrackEventInit = class external 'TrackEventInit' (JEventInit)
  public
    track: Union;
  end;

implementation

end.
