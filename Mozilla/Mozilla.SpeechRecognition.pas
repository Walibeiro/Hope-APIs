unit Mozilla.SpeechRecognition;

interface

type
  // Constructor,Pref=media.webspeech.recognition.enable,Func=SpeechRecognition::IsAuthorized
  JSpeechRecognition = class external 'SpeechRecognition' (JEventTarget)
  public
    grammars: JSpeechGrammarList;
    lang: String;
    continuous: Boolean; { Throws } 
    interimResults: Boolean;
    maxAlternatives: Integer;
    serviceURI: String; { Throws } 
    onaudiostart: JEventHandler;
    onsoundstart: JEventHandler;
    onspeechstart: JEventHandler;
    onspeechend: JEventHandler;
    onsoundend: JEventHandler;
    onaudioend: JEventHandler;
    onresult: JEventHandler;
    onnomatch: JEventHandler;
    onerror: JEventHandler;
    onstart: JEventHandler;
    onend: JEventHandler;
    procedure start; overload; { Throws,UnsafeInPrerendering } 
    procedure start(stream: JMediaStream); overload; { Throws,UnsafeInPrerendering } 
    procedure stop;
    procedure abort;
  end;

implementation

end.
