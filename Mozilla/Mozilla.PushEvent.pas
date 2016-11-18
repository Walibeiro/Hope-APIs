unit Mozilla.PushEvent;

interface

type
  // Constructor( DOMString type , optional PushEventInit eventInitDict),Func=nsContentUtils::PushEnabled,Exposed=ServiceWorker
  JPushEvent = class external 'PushEvent' (JExtendableEvent)
  public
    data: JPushMessageData;
  end;

  TPushMessageDataInit = Union;
  JPushEventInit = class external 'PushEventInit' (JExtendableEventInit)
  public
    data: TPushMessageDataInit;
  end;

implementation

end.
