unit Mozilla.MutationObserver;

interface

type
  // ProbablyShortLivingObject
  JMutationRecord = class external 'MutationRecord'
  public
    type: String; { Constant } 
    target: JNode; { Constant } 
    addedNodes: JNodeList; { Constant } 
    removedNodes: JNodeList; { Constant } 
    previousSibling: JNode; { Constant } 
    nextSibling: JNode; { Constant } 
    attributeName: String; { Constant } 
    attributeNamespace: String; { Constant } 
    oldValue: String; { Constant } 
    addedAnimations: array of JAnimation; { Constant,Cached,ChromeOnly } 
    changedAnimations: array of JAnimation; { Constant,Cached,ChromeOnly } 
    removedAnimations: array of JAnimation; { Constant,Cached,ChromeOnly } 
  end;

  // Constructor( MutationCallback mutationCallback)
  JMutationObserver = class external 'MutationObserver'
  public
    mutationCallback: JMutationCallback; { ChromeOnly } 
    mergeAttributeRecords: Boolean; { ChromeOnly } 
    procedure observe(target: JNode); overload; { Throws } 
    procedure observe(target: JNode; options: JMutationObserverInit); overload; { Throws } 
    procedure disconnect;
    function takeRecords: array of JMutationRecord;
    function getObservingInfo: array of JMutationObservingInfo; { ChromeOnly,Throws } 
  end;

  JMutationCallback = procedure(mutations: array of JMutationRecord; observer: JMutationObserver);

  JMutationObserverInit = class external 'MutationObserverInit'
  public
    childList: Boolean;
    attributes: Boolean;
    characterData: Boolean;
    subtree: Boolean;
    attributeOldValue: Boolean;
    characterDataOldValue: Boolean;
    nativeAnonymousChildList: Boolean; { ChromeOnly } 
    animations: Boolean; { ChromeOnly } 
    attributeFilter: array of String;
  end;

  JMutationObservingInfo = class external 'MutationObservingInfo' (JMutationObserverInit)
  public
    observedNode: JNode;
  end;

implementation

end.
