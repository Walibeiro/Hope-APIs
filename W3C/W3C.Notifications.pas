unit W3C.Notifications;

interface

uses
  W3C.DOM4;

type
  JNotificationDirection = String;
  JNotificationDirectionHelper = strict helper for JNotificationDirection
    const Auto = 'auto';
    const Ltr = 'ltr';
    const Rtl = 'rtl';
  end;
  
  JNotificationOptions = class external 'NotificationOptions'
  public
    dir: JNotificationDirection;
    lang: String;
    body: String;
    tag: String;
    icon: String;
  end;

  JNotificationPermission = String;
  JNotificationPermissionHelper = strict helper for JNotificationPermission 
    const Default = 'default';
    const Denied = 'denied';
    const Granted = 'granted';
  end;

  TNotificationPermissionCallback = procedure(permission: JNotificationPermission);

  JNotification = class external 'Notification' (JEventTarget)
  public
    permission: JNotificationPermission;
    onclick: TEventHandler;
    onshow: TEventHandler;
    onerror: TEventHandler;
    onclose: TEventHandler;
    title: String;
    dir: JNotificationDirection;
    lang: String;
    body: String;
    tag: String;
    icon: String;
    constructor Create(Title: String; options: JNotificationOptions);
    procedure requestPermission; overload;
    procedure requestPermission(Callback: TNotificationPermissionCallback); overload;
    procedure close;
  end;