unit Mozilla.SpeechRecognitionResult;

interface

type
  // Pref=media.webspeech.recognition.enable,Func=SpeechRecognition::IsAuthorized
  JSpeechRecognitionResult = class external 'SpeechRecognitionResult'
  public
    length: Integer;
    isFinal: Boolean;
    function item(&index: Integer): JSpeechRecognitionAlternative;
  end;

implementation

end.
