unit Mozilla.EventTarget;

interface

type
  JEventListenerOptions = class external 'EventListenerOptions'
  public
    capture: Boolean;
    mozSystemGroup: Boolean; { Func=ThreadSafeIsChromeOrXBL } 
  end;

  JAddEventListenerOptions = class external 'AddEventListenerOptions' (JEventListenerOptions)
  public
    passive: Boolean;
    once: Boolean;
  end;

  // Exposed=( Window , Worker , WorkerDebugger , System)
  JEventTarget = class external 'EventTarget'
  public
// TODO    ownerGlobal: JWindowProxy; { ChromeOnly,Exposed=( Window , System),BinaryName=ownerGlobalForBindings }
    procedure addEventListener(&type: String; listener: JEventListener; wantsUntrusted: Boolean = ); overload; { Throws } 
    procedure addEventListener(&type: String; listener: JEventListener; options: Union; wantsUntrusted: Boolean = ); overload; { Throws } 
    procedure removeEventListener(&type: String; listener: JEventListener); overload; { Throws } 
    procedure removeEventListener(&type: String; listener: JEventListener; options: Union); overload; { Throws } 
    function dispatchEvent(event: JEvent): Boolean; { Throws } 
    procedure setEventHandler(&type: String; handler: JEventHandler { TreatNonCallableAsNull } ); { ChromeOnly,Throws } 
    function getEventHandler(&type: String): JEventHandler; { ChromeOnly } 
  end;
