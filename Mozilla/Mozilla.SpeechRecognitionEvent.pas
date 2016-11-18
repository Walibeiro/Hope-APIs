unit Mozilla.SpeechRecognitionEvent;

interface

type
  // Pref=media.webspeech.recognition.enable,Func=SpeechRecognition::IsAuthorized,Constructor( DOMString type , optional SpeechRecognitionEventInit eventInitDict)
  JSpeechRecognitionEvent = class external 'SpeechRecognitionEvent' (JEvent)
  public
    resultIndex: Integer;
    results: JSpeechRecognitionResultList;
    interpretation: Variant;
    emma: JDocument;
  end;

  JSpeechRecognitionEventInit = class external 'SpeechRecognitionEventInit' (JEventInit)
  public
    resultIndex: Integer;
    results: JSpeechRecognitionResultList;
    interpretation: Variant;
    emma: JDocument;
  end;

implementation

end.
