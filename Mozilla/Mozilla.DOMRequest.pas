unit Mozilla.DOMRequest;

interface

type
  JDOMRequestReadyState = (pending, done);

  // Exposed=( Window , Worker , System),NoInterfaceObject
  JDOMRequestShared = class external 'DOMRequestShared'
  public
    readyState: JDOMRequestReadyState;
    result: Variant;
    error: JDOMError;
    onsuccess: JEventHandler;
    onerror: JEventHandler;
  end;

  // Exposed=( Window , Worker , System)
  JDOMRequest = class external 'DOMRequest' (JEventTarget)
  public
    function then(fulfillCallback: JAnyCallback =  { TreatNonCallableAsNull } ; rejectCallback: JAnyCallback =  { TreatNonCallableAsNull } ): Variant; { NewObject,Throws } 
  end;

implementation

end.
