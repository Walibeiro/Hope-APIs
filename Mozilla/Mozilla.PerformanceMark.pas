unit Mozilla.PerformanceMark;

interface

type
  // Exposed=( Window , Worker)
  JPerformanceMark = class external 'PerformanceMark' (JPerformanceEntry)
  end;

implementation

end.
