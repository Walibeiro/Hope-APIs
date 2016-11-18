unit Mozilla.MozSelfSupport;

interface

type
  // ChromeOnly,JSImplementation=@mozilla.org/mozselfsupport;1,Constructor()
  JMozSelfSupport = class external 'MozSelfSupport'
  public
    healthReportDataSubmissionEnabled: Boolean;
    function getTelemetryPingList: array of object;
    function getTelemetryPing(pingID: String): object;
    function getCurrentTelemetryEnvironment: object;
    function getCurrentTelemetrySubsessionPing: object;
    procedure resetPref(&name: String);
    procedure resetSearchEngines;
  end;

implementation

end.
