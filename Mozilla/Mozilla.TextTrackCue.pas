unit Mozilla.TextTrackCue;

interface

type
  JTextTrackCue = class external 'TextTrackCue' (JEventTarget)
  public
    track: JTextTrack;
    id: String;
    startTime: Float;
    endTime: Float;
    pauseOnExit: Boolean;
    onenter: JEventHandler;
    onexit: JEventHandler;
  end;

implementation

end.
