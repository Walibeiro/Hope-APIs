unit Mozilla.BrowserElement;

interface

type
  JBrowserElementNextPaintEventCallback = procedure;

  JBrowserFindCaseSensitivity = (bfcsCase-sensitive, bfcsCase-insensitive);

  JBrowserFindDirection = (bfdForward, bfdBackward);

  JBrowserElementDownloadOptions = class external 'BrowserElementDownloadOptions'
  public
    filename: String;
    referrer: String;
  end;

  JBrowserElementExecuteScriptOptions = class external 'BrowserElementExecuteScriptOptions'
  public
    url: String;
    origin: String;
  end;

  // NoInterfaceObject
  JBrowserElement = class external 'BrowserElement'
  end;

  // NoInterfaceObject
  JBrowserElementCommon = class external 'BrowserElementCommon'
  public
    procedure setVisible(visible: Boolean); { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function getVisible: JDOMRequest; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure setActive(active: Boolean); { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function getActive: Boolean; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure addNextPaintListener(listener: JBrowserElementNextPaintEventCallback); { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure removeNextPaintListener(listener: JBrowserElementNextPaintEventCallback); { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
  end;

  // NoInterfaceObject
  JBrowserElementPrivileged = class external 'BrowserElementPrivileged'
  public
    procedure sendMouseEvent(&type: String; x: Integer; y: Integer; button: Integer; clickCount: Integer; modifiers: Integer); { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure sendTouchEvent(&type: String; identifiers: array of Integer; x: array of Integer; y: array of Integer; rx: array of Integer; ry: array of Integer; rotationAngles: array of Float; forces: array of Float; count: Integer; modifiers: Integer); { Throws,Pref=dom.mozBrowserFramesEnabled,Func=TouchEvent::PrefEnabled,ChromeOnly } 
    procedure goBack; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure goForward; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure reload(hardReload: Boolean = False); { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure stop; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function download(url: String): JDOMRequest; overload; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function download(url: String; options: JBrowserElementDownloadOptions): JDOMRequest; overload; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function purgeHistory: JDOMRequest; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function getScreenshot(width: Integer { EnforceRange } ; height: Integer { EnforceRange } ; mimeType: String = ): JDOMRequest; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure zoom(zoom: Float); { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function getCanGoBack: JDOMRequest; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function getCanGoForward: JDOMRequest; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function getContentDimensions: JDOMRequest; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function setInputMethodActive(isActive: Boolean): JDOMRequest; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure findAll(searchString: String; caseSensitivity: JBrowserFindCaseSensitivity); { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure findNext(direction: JBrowserFindDirection); { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure clearMatch; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function executeScript(script: String): JDOMRequest; overload; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function executeScript(script: String; options: JBrowserElementExecuteScriptOptions): JDOMRequest; overload; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function getWebManifest: JDOMRequest; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
  end;

implementation

end.
