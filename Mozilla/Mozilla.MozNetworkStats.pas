unit Mozilla.MozNetworkStats;

interface

type
  JNetworkStatsGetOptions = class external 'NetworkStatsGetOptions'
  public
    appManifestURL: String;
    serviceType: String;
    browsingTrafficOnly: Boolean;
  end;

  JNetworkStatsAlarmOptions = class external 'NetworkStatsAlarmOptions'
  public
    startTime: JDate;
    data: JDate;
  end;

  // JSImplementation=@mozilla.org/networkstats;1,ChromeOnly,Pref=dom.mozNetworkStats.enabled
  JMozNetworkStats = class external 'MozNetworkStats'
  public
    appManifestURL: String;
    browsingTrafficOnly: Boolean;
    serviceType: String;
    network: JMozNetworkStatsInterface;
    data: array of JMozNetworkStatsData; { Cached,Pure } 
    start: Variant;
    end: Variant;
  end;

implementation

end.
