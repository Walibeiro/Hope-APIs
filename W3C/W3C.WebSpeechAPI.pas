unit W3C.WebSpeechAPI;

interface

uses
  W3C.DOM4;

type
  JSpeechGrammar = class external 'SpeechGrammar'
  public
    src: String;
    weight: Float;
    constructor Create;
  end;

  JSpeechGrammarList = class external 'SpeechGrammarList'
  public
    length: Integer;
    constructor Create;
    function item(&index: Integer): JSpeechGrammar;
    procedure addFromURI(src: String); overload;
    procedure addFromURI(src: String; weight: Float); overload;
    procedure addFromString(string: String); overload;
    procedure addFromString(string: String; weight: Float); overload;
  end;

  JErrorCode = String;
  JErrorCodeHelper = strict helper for JErrorCode
    const NoSpeech = "no-speech";
    const Aborted = "aborted";
    const AudioCapture = "audio-capture";
    const Network = "network";
    const NotAllowed = "not-allowed";
    const ServiceNotAllowed = "service-not-allowed";
    const BadGrammar = "bad-grammar";
    const LanguageNotSupported = "language-not-supported";
  end;

  JSpeechRecognitionError = class external 'SpeechRecognitionError' (JEvent)
  public
    error: JErrorCode;
    message: String;
  end;

  JSpeechRecognitionAlternative = class external 'SpeechRecognitionAlternative'
  public
    transcript: String;
    confidence: Float;
  end;

  JSpeechRecognitionResult = class external 'SpeechRecognitionResult'
  public
    length: Integer;
    final: Boolean;
    function item(&index: Integer): JSpeechRecognitionAlternative;
  end;

  JSpeechRecognitionResultList = class external 'SpeechRecognitionResultList'
  public
    length: Integer;
    function item(&index: Integer): JSpeechRecognitionResult;
  end;

  JSpeechRecognitionEvent = class external 'SpeechRecognitionEvent' (JEvent)
  public
    resultIndex: Integer;
    results: JSpeechRecognitionResultList;
    interpretation: Variant;
    emma: JDocument;
  end;

  JSpeechRecognition = class external 'SpeechRecognition' (JEventTarget)
  public
    grammars: JSpeechGrammarList;
    lang: String;
    continuous: Boolean;
    interimResults: Boolean;
    maxAlternatives: Integer;
    serviceURI: String;
    onaudiostart: TEventHandler;
    onsoundstart: TEventHandler;
    onspeechstart: TEventHandler;
    onspeechend: TEventHandler;
    onsoundend: TEventHandler;
    onaudioend: TEventHandler;
    onresult: TEventHandler;
    onnomatch: TEventHandler;
    onerror: TEventHandler;
    onstart: TEventHandler;
    onend: TEventHandler;
    constructor Create;
    procedure start;
    procedure stop;
    procedure abort;
  end;

  JSpeechSynthesisVoice = class external 'SpeechSynthesisVoice'
  public
    voiceURI: String;
    name: String;
    lang: String;
    localService: Boolean;
    default: Boolean;
  end;

  JSpeechSynthesisUtterance = class external 'SpeechSynthesisUtterance' (JEventTarget)
  public
    text: String;
    lang: String;
    voiceURI: String;
    voice: JSpeechSynthesisVoice;
    volume: Float;
    rate: Float;
    pitch: Float;
    onstart: TEventHandler;
    onend: TEventHandler;
    onerror: TEventHandler;
    onpause: TEventHandler;
    onresume: TEventHandler;
    onmark: TEventHandler;
    onboundary: TEventHandler;
    constructor Create; overload;
    constructor Create(text: String); overload;
  end;

  JSpeechSynthesisEvent = class external 'SpeechSynthesisEvent' (JEvent)
  public
    charIndex: Integer;
    elapsedTime: Float;
    name: String;
  end;

  JSpeechSynthesisVoiceList = class external 'SpeechSynthesisVoiceList'
  public
    length: Integer;
    function item(index: Integer): JSpeechSynthesisVoice;

    property Items[index : Integer] : JSpeechSynthesisVoice read item; default;
  end;

  JSpeechSynthesis = class external 'SpeechSynthesis'
  public
    pending: Boolean;
    speaking: Boolean;
    paused: Boolean;
    procedure speak(utterance: JSpeechSynthesisUtterance);
    procedure cancel;
    procedure pause;
    procedure resume;
    function getVoices: JSpeechSynthesisVoiceList;
  end;

  // NoInterfaceObject
  JSpeechSynthesisGetter = class external 'SpeechSynthesisGetter'
  public
    speechSynthesis: JSpeechSynthesis;
  end;

var SpeechSynthesis external 'window.speechSynthesis': JSpeechSynthesis;