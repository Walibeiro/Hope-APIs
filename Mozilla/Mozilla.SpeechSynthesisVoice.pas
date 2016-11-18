unit Mozilla.SpeechSynthesisVoice;

interface

type
  // Pref=media.webspeech.synth.enabled
  JSpeechSynthesisVoice = class external 'SpeechSynthesisVoice'
  public
    voiceURI: String;
    name: String;
    lang: String;
    localService: Boolean;
    default: Boolean;
  end;

implementation

end.
