unit Mozilla.MozSpeakerManager;

interface

type
  // Constructor()
  JMozSpeakerManager = class external 'MozSpeakerManager' (JEventTarget)
  public
    speakerforced: Boolean;
    forcespeaker: Boolean;
    onspeakerforcedchange: JEventHandler;
  end;

implementation

end.
