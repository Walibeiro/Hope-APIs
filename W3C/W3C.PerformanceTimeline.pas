unit W3C.PerformanceTimeline;

interface

uses
  W3C.HighResolutionTime;

type
  JPerformanceEntry = class external 'PerformanceEntry'
  public
    name: String;
    entryType: String;
    startTime: TDOMHighResTimeStamp;
    duration: TDOMHighResTimeStamp;
  end;

  TPerformanceEntryList = array of JPerformanceEntry;

  JPerformance = partial class external 'Performance'
  public
    function getEntries: TPerformanceEntryList;
    function getEntriesByType(entryType: String): TPerformanceEntryList;
    function getEntriesByName(&name: String): TPerformanceEntryList; overload;
    function getEntriesByName(&name: String; entryType: String): TPerformanceEntryList; overload;
  end;
