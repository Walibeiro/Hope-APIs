unit Mozilla.MozNetworkStatsData;

interface

type
  // JSImplementation=@mozilla.org/networkStatsdata;1,ChromeOnly,Pref=dom.mozNetworkStats.enabled
  JMozNetworkStatsData = class external 'MozNetworkStatsData'
  public
    rxBytes: Integer;
    txBytes: Integer;
    date: JDate;
  end;

implementation

end.
