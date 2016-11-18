unit Mozilla.SpeechGrammar;

interface

type
  // Constructor,Pref=media.webspeech.recognition.enable,Func=SpeechRecognition::IsAuthorized
  JSpeechGrammar = class external 'SpeechGrammar'
  public
    src: String; { Throws } 
    weight: Float; { Throws } 
  end;

implementation

end.
