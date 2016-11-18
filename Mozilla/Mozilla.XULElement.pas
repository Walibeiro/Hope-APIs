unit Mozilla.XULElement;

interface

type
  // Func=IsChromeOrXBL
  JXULElement = class external 'XULElement' (JElement)
  public
    className: String; { SetterThrows } 
    align: String; { SetterThrows } 
    dir: String; { SetterThrows } 
    flex: String; { SetterThrows } 
    flexGroup: String; { SetterThrows } 
    ordinal: String; { SetterThrows } 
    orient: String; { SetterThrows } 
    pack: String; { SetterThrows } 
    hidden: Boolean;
    collapsed: Boolean;
    observes: String; { SetterThrows } 
    menu: String; { SetterThrows } 
    contextMenu: String; { SetterThrows } 
    tooltip: String; { SetterThrows } 
    width: String; { SetterThrows } 
    height: String; { SetterThrows } 
    minWidth: String; { SetterThrows } 
    minHeight: String; { SetterThrows } 
    maxWidth: String; { SetterThrows } 
    maxHeight: String; { SetterThrows } 
    persist: String; { SetterThrows } 
    left: String; { SetterThrows } 
    top: String; { SetterThrows } 
    datasources: String; { SetterThrows } 
    ref: String; { SetterThrows } 
    tooltipText: String; { SetterThrows } 
    statusText: String; { SetterThrows } 
    allowEvents: Boolean;
    database: JMozRDFCompositeDataSource;
    builder: JMozXULTemplateBuilder;
    resource: JMozRDFResource; { Throws } 
    controllers: JMozControllers; { Throws } 
    boxObject: JBoxObject; { Throws } 
    style: JCSSStyleDeclaration; { Constant } 
    procedure focus; { Throws } 
    procedure blur; { Throws } 
    procedure click; { Throws } 
    procedure doCommand;
    function getElementsByAttribute(&name: String; value: String): JNodeList;
    function getElementsByAttributeNS(namespaceURI: String; &name: String; value: String): JNodeList; { Throws } 
  end;

  // NoInterfaceObject
  JMozFrameLoaderOwner = class external 'MozFrameLoaderOwner'
  public
    frameLoader: JMozFrameLoader; { ChromeOnly } 
    procedure setIsPrerendered; { ChromeOnly } 
    procedure presetOpenerWindow(window: JWindowProxy); { ChromeOnly,Throws } 
    procedure swapFrameLoaders(aOtherLoaderOwner: JXULElement); { ChromeOnly,Throws } 
    procedure swapFrameLoaders(aOtherLoaderOwner: JHTMLIFrameElement); { ChromeOnly,Throws } 
  end;