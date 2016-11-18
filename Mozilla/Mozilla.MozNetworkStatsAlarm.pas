unit Mozilla.MozNetworkStatsAlarm;

interface

type
  // JSImplementation=@mozilla.org/networkstatsalarm;1,ChromeOnly,Pref=dom.mozNetworkStats.enabled
  JMozNetworkStatsAlarm = class external 'MozNetworkStatsAlarm'
  public
    alarmId: Integer;
    network: JMozNetworkStatsInterface;
    threshold: Integer;
    data: Variant;
  end;

implementation

end.
