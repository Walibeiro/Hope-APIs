unit W3C.WidgetsApis;

interface

uses
  W3C.WebStorage;

type
  // NoInterfaceObject
  JWidgetStorage = class external 'WidgetStorage' (JStorage)
  end;

  JWidget = class external 'Widget'
  public
    author: String;
    description: String;
    name: String;
    shortName: String;
    version: String;
    id: String;
    authorEmail: String;
    authorHref: String;
    preferences: JWidgetStorage;
    height: Integer;
    width: Integer;
  end;

  // NoInterfaceObject
  JWindowWidget = class external 'WindowWidget'
  public
    widget: JWidget;
  end;