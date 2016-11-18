unit Mozilla.SpeechRecognitionResultList;

interface

type
  // Pref=media.webspeech.recognition.enable,Func=SpeechRecognition::IsAuthorized
  JSpeechRecognitionResultList = class external 'SpeechRecognitionResultList'
  public
    length: Integer;
    function item(&index: Integer): JSpeechRecognitionResult;
  end;

implementation

end.
