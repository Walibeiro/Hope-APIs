unit Mozilla.Event;

interface

uses
  Mozilla.EventTarget;

type
  // Constructor( DOMString type , optional EventInit eventInitDict),Exposed=( Window , Worker , System),ProbablyShortLivingObject
  JEvent = class external 'Event'
  const
    NONE: Integer = 0;
    CAPTURING_PHASE: Integer = 1;
    AT_TARGET: Integer = 2;
    BUBBLING_PHASE: Integer = 3;
    ALT_MASK: Integer = 1;
    CONTROL_MASK: Integer = 2;
    SHIFT_MASK: Integer = 4;
    META_MASK: Integer = 8;
  public
    &type: String; { Pure }
    target: JEventTarget; { Pure }
    currentTarget: JEventTarget; { Pure }
    eventPhase: Integer; { Pure }
    bubbles: Boolean; { Pure }
    cancelable: Boolean; { Pure }
    defaultPrevented: Boolean; { Pure }
    defaultPreventedByChrome: Boolean; { ChromeOnly,Pure }
    defaultPreventedByContent: Boolean; { ChromeOnly,Pure }
    composed: Boolean; { Pure }
    isTrusted: Boolean; { Unforgeable,Pure }
    timeStamp: JDOMHighResTimeStamp; { Pure }
    originalTarget: JEventTarget;
    explicitOriginalTarget: JEventTarget;
    composedTarget: JEventTarget; { ChromeOnly }
    multipleActionsPrevented: Boolean; { ChromeOnly }
    isSynthesized: Boolean; { ChromeOnly }
    procedure stopPropagation;
    procedure stopImmediatePropagation;
    procedure preventDefault;
    procedure initEvent(&type: String; bubbles: Boolean; cancelable: Boolean);
    function getPreventDefault: Boolean;
  end;

  JEventInit = class external 'EventInit'
  public
    bubbles: Boolean;
    cancelable: Boolean;
    composed: Boolean;
  end;