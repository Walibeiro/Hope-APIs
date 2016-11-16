unit W3C.NavigationTiming;

interface

uses
  W3C.PerformanceTimeline;

type
  JPerformanceTiming = class external 'PerformanceTiming'
  public
    navigationStart: Integer;
    unloadEventStart: Integer;
    unloadEventEnd: Integer;
    redirectStart: Integer;
    redirectEnd: Integer;
    fetchStart: Integer;
    domainLookupStart: Integer;
    domainLookupEnd: Integer;
    connectStart: Integer;
    connectEnd: Integer;
    secureConnectionStart: Integer;
    requestStart: Integer;
    responseStart: Integer;
    responseEnd: Integer;
    domLoading: Integer;
    domInteractive: Integer;
    domContentLoadedEventStart: Integer;
    domContentLoadedEventEnd: Integer;
    domComplete: Integer;
    loadEventStart: Integer;
    loadEventEnd: Integer;
  end;

  JPerformanceNavigation = class external 'PerformanceNavigation'
  const
    TYPE_NAVIGATE: Integer = 0;
    TYPE_RELOAD: Integer = 1;
    TYPE_BACK_FORWARD: Integer = 2;
    TYPE_RESERVED: Integer = 255;
  public
    &type: Integer;
    redirectCount: Integer;
  end;

  JPerformance = partial class external 'Performance'
  public
    timing: JPerformanceTiming;
    navigation: JPerformanceNavigation;
  end;

  JWindow = partial class external 'Window'
  public
    performance: JPerformance; { Replaceable }
  end;
