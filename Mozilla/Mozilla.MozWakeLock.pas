unit Mozilla.MozWakeLock;

interface

type
  // Pref=dom.wakelock.enabled,Func=Navigator::HasWakeLockSupport
  JMozWakeLock = class external 'MozWakeLock'
  public
    topic: String;
    procedure unlock; { Throws } 
  end;

implementation

end.
