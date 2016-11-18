unit Mozilla.MozNetworkStatsManager;

interface

type
  // NavigatorProperty=mozNetworkStats,JSImplementation=@mozilla.org/networkStatsManager;1,ChromeOnly,Pref=dom.mozNetworkStats.enabled
  JMozNetworkStatsManager = class external 'MozNetworkStatsManager'
  const 
    WIFI: Integer = 0;
    MOBILE: Integer = 1;
  public
    sampleRate: Integer;
    maxStorageAge: Integer;
    function getSamples(network: JMozNetworkStatsInterface; start: JDate; &end: JDate): JDOMRequest; overload;
    function getSamples(network: JMozNetworkStatsInterface; start: JDate; &end: JDate; options: JNetworkStatsGetOptions): JDOMRequest; overload;
    function addAlarm(network: JMozNetworkStatsInterface; threshold: Integer): JDOMRequest; overload;
    function addAlarm(network: JMozNetworkStatsInterface; threshold: Integer; options: JNetworkStatsAlarmOptions): JDOMRequest; overload;
    function getAllAlarms: JDOMRequest; overload;
    function getAllAlarms(network: JMozNetworkStatsInterface): JDOMRequest; overload;
    function removeAlarms(alarmId: Integer = 0): JDOMRequest;
    function clearStats(network: JMozNetworkStatsInterface): JDOMRequest;
    function clearAllStats: JDOMRequest;
    function getAvailableNetworks: JDOMRequest;
    function getAvailableServiceTypes: JDOMRequest;
  end;

implementation

end.
