unit Mozilla.SpeechSynthesisUtterance;

interface

type
  // Pref=media.webspeech.synth.enabled,Constructor,Constructor( DOMString text)
  JSpeechSynthesisUtterance = class external 'SpeechSynthesisUtterance' (JEventTarget)
  public
    text: String;
    lang: String;
    voice: JSpeechSynthesisVoice;
    volume: Float;
    rate: Float;
    pitch: Float;
    onstart: JEventHandler;
    onend: JEventHandler;
    onerror: JEventHandler;
    onpause: JEventHandler;
    onresume: JEventHandler;
    onmark: JEventHandler;
    onboundary: JEventHandler;
    chosenVoiceURI: String; { ChromeOnly } 
  end;

implementation

end.
