unit Mozilla.Downloads;

interface

type
  JDownloadState = (dsDownloading, dsStopped, dsSucceeded, dsFinalized);

  // NoInterfaceObject,NavigatorProperty=mozDownloadManager,JSImplementation=@mozilla.org/downloads/manager;1,Pref=dom.mozDownloads.enabled,ChromeOnly
  JDOMDownloadManager = class external 'DOMDownloadManager' (JEventTarget)
  public
    ondownloadstart: JEventHandler;
    function getDownloads: array of DOMDownload;
    function remove(download: JDOMDownload): DOMDownload; { UnsafeInPrerendering } 
    procedure clearAllDone; { UnsafeInPrerendering } 
    function adoptDownload: DOMDownload; overload;
    function adoptDownload(download: JAdoptDownloadDict): DOMDownload; overload;
  end;

  // JSImplementation=@mozilla.org/downloads/download;1,Pref=dom.mozDownloads.enabled,ChromeOnly
  JDOMDownload = class external 'DOMDownload' (JEventTarget)
  public
    totalBytes: Integer;
    currentBytes: Integer;
    url: String;
    path: String;
    storageName: String;
    storagePath: String;
    state: JDownloadState;
    contentType: String;
    startTime: JDate;
    id: String;
    sourceAppManifestURL: String;
    error: JDOMError;
    onstatechange: JEventHandler;
    function pause: DOMDownload; { UnsafeInPrerendering } 
    function resume: DOMDownload; { UnsafeInPrerendering } 
  end;

  JAdoptDownloadDict = class external 'AdoptDownloadDict'
  public
    url: String;
    storageName: String;
    storagePath: String;
    contentType: String;
    startTime: JDate;
  end;

implementation

end.
