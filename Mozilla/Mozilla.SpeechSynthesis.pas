unit Mozilla.SpeechSynthesis;

interface

type
  // Pref=media.webspeech.synth.enabled
  JSpeechSynthesis = class external 'SpeechSynthesis' (JEventTarget)
  public
    pending: Boolean;
    speaking: Boolean;
    paused: Boolean;
    onvoiceschanged: JEventHandler;
    procedure speak(utterance: JSpeechSynthesisUtterance); { UnsafeInPrerendering } 
    procedure cancel;
    procedure pause;
    procedure resume; { UnsafeInPrerendering } 
    function getVoices: array of JSpeechSynthesisVoice;
    procedure forceEnd; { ChromeOnly } 
  end;

implementation

end.
