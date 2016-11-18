unit Mozilla.AppNotificationServiceOptions;

interface

type
  JAppNotificationServiceOptions = class external 'AppNotificationServiceOptions'
  public
    textClickable: Boolean;
    manifestURL: String;
    id: String;
    dbId: String;
    dir: String;
    lang: String;
    tag: String;
    data: String;
    mozbehavior: JNotificationBehavior;
  end;