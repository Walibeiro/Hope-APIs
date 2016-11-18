unit Mozilla.HTMLElement;

interface

type
  JHTMLElement = class external 'HTMLElement' (JElement)
  public
    title: String;
    lang: String;
    dir: String; { SetterThrows,Pure } 
    dataset: JDOMStringMap; { Constant } 
    innerText: String; { GetterThrows,Pure,TreatNullAs=EmptyString } 
    hidden: Boolean; { SetterThrows,Pure } 
    tabIndex: Integer; { SetterThrows,Pure } 
    accessKey: String; { SetterThrows,Pure } 
    accessKeyLabel: String; { Pure } 
    draggable: Boolean; { SetterThrows,Pure } 
    contentEditable: String; { SetterThrows,Pure } 
    isContentEditable: Boolean; { Pure } 
    contextMenu: JHTMLMenuElement; { Pure } 
    spellcheck: Boolean; { SetterThrows,Pure } 
    style: JCSSStyleDeclaration; { PutForwards=cssText,Constant } 
    oncopy: JEventHandler;
    oncut: JEventHandler;
    onpaste: JEventHandler;
    offsetParent: JElement;
    offsetTop: Integer;
    offsetLeft: Integer;
    offsetWidth: Integer;
    offsetHeight: Integer;
    scrollgrab: Boolean; { Func=nsGenericHTMLElement::IsScrollGrabAllowed } 
    procedure click;
    procedure focus; { Throws } 
    procedure blur; { Throws } 
  end;

  // NoInterfaceObject
  JTouchEventHandlers = class external 'TouchEventHandlers'
  public
    ontouchstart: JEventHandler; { Func=nsGenericHTMLElement::TouchEventsEnabled } 
    ontouchend: JEventHandler; { Func=nsGenericHTMLElement::TouchEventsEnabled } 
    ontouchmove: JEventHandler; { Func=nsGenericHTMLElement::TouchEventsEnabled } 
    ontouchcancel: JEventHandler; { Func=nsGenericHTMLElement::TouchEventsEnabled } 
  end;

  JHTMLUnknownElement = class external 'HTMLUnknownElement' (JHTMLElement)
  end;

implementation

end.
