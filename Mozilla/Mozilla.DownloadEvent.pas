unit Mozilla.DownloadEvent;

interface

type
  // Constructor( DOMString type , optional DownloadEventInit eventInitDict),Pref=dom.mozDownloads.enabled,ChromeOnly
  JDownloadEvent = class external 'DownloadEvent' (JEvent)
  public
    download: JDOMDownload;
  end;

  JDownloadEventInit = class external 'DownloadEventInit' (JEventInit)
  public
    download: JDOMDownload;
  end;

implementation

end.
