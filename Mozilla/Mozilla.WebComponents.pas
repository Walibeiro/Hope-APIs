unit Mozilla.WebComponents;

interface

type
  JLifecycleCreatedCallback = procedure;

  JLifecycleAttachedCallback = procedure;

  JLifecycleDetachedCallback = procedure;

  JLifecycleAttributeChangedCallback = procedure(attrName: String; oldValue: String; newValue: String);

  JLifecycleCallbacks = class external 'LifecycleCallbacks'
  public
    createdCallback: JLifecycleCreatedCallback;
    attachedCallback: JLifecycleAttachedCallback;
    detachedCallback: JLifecycleDetachedCallback;
    attributeChangedCallback: JLifecycleAttributeChangedCallback;
  end;

  JElementRegistrationOptions = class external 'ElementRegistrationOptions'
  public
    prototype: Variant;
    extends: String;
  end;

implementation

end.
