unit Mozilla.DesktopNotification;

interface

type
  // HeaderFile=mozilla/dom/DesktopNotification.h
  JDesktopNotificationCenter = class external 'DesktopNotificationCenter'
  public
    function createNotification(title: String; description: String; iconURL: String = ): JDesktopNotification; { NewObject } 
  end;

  JDesktopNotification = class external 'DesktopNotification' (JEventTarget)
  public
    onclick: JEventHandler;
    onclose: JEventHandler;
    procedure show; { Throws } 
  end;

implementation

end.
