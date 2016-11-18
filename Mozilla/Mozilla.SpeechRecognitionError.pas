unit Mozilla.SpeechRecognitionError;

interface

type
  JSpeechRecognitionErrorCode = (srecNo-speech, srecAborted, srecAudio-capture, srecNetwork, srecNot-allowed, srecService-not-allowed, srecBad-grammar, srecLanguage-not-supported);

  // Pref=media.webspeech.recognition.enable,Func=SpeechRecognition::IsAuthorized,Constructor( DOMString type , optional SpeechRecognitionErrorInit eventInitDict)
  JSpeechRecognitionError = class external 'SpeechRecognitionError' (JEvent)
  public
    error: JSpeechRecognitionErrorCode;
    message: String;
  end;

  JSpeechRecognitionErrorInit = class external 'SpeechRecognitionErrorInit' (JEventInit)
  public
    error: JSpeechRecognitionErrorCode;
    message: String;
  end;

implementation

end.
