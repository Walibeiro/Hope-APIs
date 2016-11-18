unit Mozilla.PluginCrashedEvent;

interface

type
  // Constructor( DOMString type , optional PluginCrashedEventInit eventInitDict),ChromeOnly
  JPluginCrashedEvent = class external 'PluginCrashedEvent' (JEvent)
  public
    pluginID: Integer;
    pluginDumpID: String;
    pluginName: String;
    browserDumpID: String;
    pluginFilename: String;
    submittedCrashReport: Boolean;
    gmpPlugin: Boolean;
  end;

  JPluginCrashedEventInit = class external 'PluginCrashedEventInit' (JEventInit)
  public
    pluginID: Integer;
    pluginDumpID: String;
    pluginName: String;
    browserDumpID: String;
    pluginFilename: String;
    submittedCrashReport: Boolean;
    gmpPlugin: Boolean;
  end;

implementation

end.
