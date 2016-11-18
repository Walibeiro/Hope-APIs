unit Mozilla.CheckerboardReportService;

interface

type
  JCheckerboardReason = (crSevere, crRecent);

  JCheckerboardReport = class external 'CheckerboardReport'
  public
    severity: Integer;
    timestamp: JDOMTimeStamp;
    log: String;
    reason: JCheckerboardReason;
  end;

  // Func=mozilla::dom::CheckerboardReportService::IsEnabled,Constructor
  JCheckerboardReportService = class external 'CheckerboardReportService'
  public
    function getReports: array of JCheckerboardReport;
    function isRecordingEnabled: Boolean;
    procedure setRecordingEnabled(aEnabled: Boolean);
    procedure flushActiveReports;
  end;

implementation

end.
