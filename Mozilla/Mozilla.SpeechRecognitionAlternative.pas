unit Mozilla.SpeechRecognitionAlternative;

interface

type
  // Pref=media.webspeech.recognition.enable,Func=SpeechRecognition::IsAuthorized
  JSpeechRecognitionAlternative = class external 'SpeechRecognitionAlternative'
  public
    transcript: String;
    confidence: Float;
  end;

implementation

end.
