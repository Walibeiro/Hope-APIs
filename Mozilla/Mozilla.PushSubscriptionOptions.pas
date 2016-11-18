unit Mozilla.PushSubscriptionOptions;

interface

type
  // Exposed=( Window , Worker),Func=nsContentUtils::PushEnabled
  JPushSubscriptionOptions = class external 'PushSubscriptionOptions'
  public
    applicationServerKey: JArrayBuffer; { SameObject,Throws } 
  end;

implementation

end.
