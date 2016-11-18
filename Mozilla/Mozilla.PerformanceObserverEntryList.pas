unit Mozilla.PerformanceObserverEntryList;

interface

type
  JPerformanceEntryFilterOptions = class external 'PerformanceEntryFilterOptions'
  public
    &name: String;
    entryType: String;
    initiatorType: String;
  end;

  // Func=Performance::IsObserverEnabled,Exposed=( Window , Worker)
  JPerformanceObserverEntryList = class external 'PerformanceObserverEntryList'
  public
    function getEntries: JPerformanceEntryList; overload;
    function getEntries(filter: JPerformanceEntryFilterOptions): JPerformanceEntryList; overload;
    function getEntriesByType(entryType: String): JPerformanceEntryList;
    function getEntriesByName(&name: String): JPerformanceEntryList; overload;
    function getEntriesByName(&name: String; entryType: String): JPerformanceEntryList; overload;
  end;

implementation

end.
