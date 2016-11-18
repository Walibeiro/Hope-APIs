unit Mozilla.TextTrack;

interface

type
  JTextTrackKind = (ttkSubtitles, ttkCaptions, ttkDescriptions, ttkChapters, ttkMetadata);

  JTextTrackMode = (ttmDisabled, ttmHidden, ttmShowing);

  JTextTrack = class external 'TextTrack' (JEventTarget)
  public
    kind: JTextTrackKind;
    label: String;
    language: String;
    id: String;
    inBandMetadataTrackDispatchType: String;
    mode: JTextTrackMode;
    cues: JTextTrackCueList;
    activeCues: JTextTrackCueList;
    oncuechange: JEventHandler;
    textTrackList: JTextTrackList; { ChromeOnly } 
    procedure addCue(cue: JVTTCue);
    procedure removeCue(cue: JVTTCue); { Throws } 
  end;

implementation

end.
