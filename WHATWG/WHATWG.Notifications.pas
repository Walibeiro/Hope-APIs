unit WHATWG.Notifications;

interface

uses
  WHATWG.DOM, WHATWG.HTML, W3C.Vibration;

type
  JNotificationPermission = String;
  JNotificationPermissionHelper = strict helper for JNotificationPermission
    const Default = 'default';
    const Denied = 'denied';
    const Granted = 'granted';
  end;

  JNotificationDirection = String;
  JNotificationDirectionHelper = strict helper for JNotificationDirection
    const Auto = 'Auto';
    const Ltr = 'Ltr';
    const Rtl = 'Rtl';
  end;

  TNotificationPermissionCallback = procedure(permission: JNotificationPermission);

  JNotificationAction = class external 'NotificationAction'
  public
    action: String;
    title: String;
    icon: String;
  end;

  JGetNotificationOptions = class external 'GetNotificationOptions'
  public
    tag: String;
  end;

  JNotificationOptions = class external 'NotificationOptions'
  public
    dir: JNotificationDirection;
    lang: String;
    body: String;
    tag: String;
    image: String;
    icon: String;
    badge: String;
    sound: String;
    vibrate: TVibratePattern;
    timestamp: JDOMTimeStamp;
    renotify: Boolean;
    silent: Boolean;
    requireInteraction: Boolean;
    data: Variant;
    actions: array of JNotificationAction;
  end;

  // Exposed = (Window, Worker)
  JNotification = class external 'Notification' (JEventTarget)
  public
    permission: JNotificationPermission;
    maxActions: Integer;
    onclick: TEventHandler;
    onerror: TEventHandler;
    title: String;
    dir: JNotificationDirection;
    lang: String;
    body: String;
    tag: String;
    image: String;
    icon: String;
    badge: String;
    sound: String;
    timestamp: JDOMTimeStamp;
    renotify: Boolean;
    silent: Boolean;
    requireInteraction: Boolean;
    data: Variant; { SameObject }
    constructor Create(title: String); overload;
    constructor Create(title: String; options: JNotificationOptions); overload;
    function requestPermission: JNotificationPermission; overload; { Exposed=Window }
    function requestPermission(deprecatedCallback: TNotificationPermissionCallback): JNotificationPermission; overload; { Exposed=Window }
    procedure close;
  end;

  JServiceWorkerRegistration = partial class external 'ServiceWorkerRegistration'
  public
    procedure showNotification(title: String); overload;
    procedure showNotification(title: String; options: JNotificationOptions); overload;
    function getNotifications: array of JNotification; overload;
    function getNotifications(filter: JGetNotificationOptions): array of JNotification; overload;
  end;

  JExtendableEventInit = class external 'ExtendableEventInit' (JEventInit)
  public
    // Defined for the forward compatibility across the derived events
  end;

  // Exposed = ServiceWorker
  JExtendableEvent = class external 'ExtendableEvent' (JEvent)
  public
    procedure waitUntil(f: Variant);

    constructor Create(&type: String; eventInitDict: JExtendableEventInit);
  end;

  JNotificationEventInit = class external 'NotificationEventInit' (JExtendableEventInit)
  public
    notification: JNotification;
    action: String;
  end;

  // Exposed = ServiceWorker
  JNotificationEvent = class external 'NotificationEvent' (JExtendableEvent)
  public
    notification: JNotification;
    action: String;
    constructor Create(&type: String; eventInitDict: JNotificationEventInit);
  end;

  JServiceWorkerGlobalScope = partial class external 'ServiceWorkerGlobalScope'
  public
    onnotificationclick: TEventHandler;
    onnotificationclose: TEventHandler;
  end;