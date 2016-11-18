unit Mozilla.SpeechGrammarList;

interface

type
  // Constructor,Pref=media.webspeech.recognition.enable,Func=SpeechRecognition::IsAuthorized
  JSpeechGrammarList = class external 'SpeechGrammarList'
  public
    length: Integer;
    function item(&index: Integer): JSpeechGrammar; { Throws } 
    procedure addFromURI(src: String); overload; { Throws } 
    procedure addFromURI(src: String; weight: Float); overload; { Throws } 
    procedure addFromString(string: String); overload; { Throws } 
    procedure addFromString(string: String; weight: Float); overload; { Throws } 
  end;

implementation

end.
