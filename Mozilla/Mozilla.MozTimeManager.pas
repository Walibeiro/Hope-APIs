unit Mozilla.MozTimeManager;

interface

type
  // Func=mozilla::dom::time::TimeManager::PrefEnabled
  JMozTimeManager = class external 'MozTimeManager'
  public
    procedure set(time: JDate);
    procedure set(time: Float);
  end;

implementation

end.
