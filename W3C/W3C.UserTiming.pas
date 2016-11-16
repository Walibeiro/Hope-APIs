unit W3C.UserTiming;

interface

uses
  W3C.PerformanceTimeline;

type
  JPerformance = partial class external 'Performance'
  public
    procedure mark(markName: String);
    procedure clearMarks; overload;
    procedure clearMarks(markName: String); overload;
    procedure measure(measureName: String); overload;
    procedure measure(measureName: String; startMark: String); overload;
    procedure measure(measureName: String; startMark: String; endMark: String); overload;
    procedure clearMeasures; overload;
    procedure clearMeasures(measureName: String); overload;
  end;

  JPerformanceMark = class external 'PerformanceMark' (JPerformanceEntry)
  end;

  JPerformanceMeasure = class external 'PerformanceMeasure' (JPerformanceEntry)
  end;