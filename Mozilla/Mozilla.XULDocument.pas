unit Mozilla.XULDocument;

interface

type
  // Func=IsChromeOrXBL
  JXULDocument = class external 'XULDocument' (JDocument)
  public
    popupNode: JNode;
    popupRangeParent: JNode; { Throws,ChromeOnly } 
    popupRangeOffset: Integer; { Throws,ChromeOnly } 
    tooltipNode: JNode;
    commandDispatcher: JXULCommandDispatcher;
    width: Integer; { Throws } 
    height: Integer; { Throws } 
    function getElementsByAttribute(&name: String; value: String { TreatNullAs=EmptyString } ): JNodeList;
    function getElementsByAttributeNS(namespaceURI: String; &name: String; value: String { TreatNullAs=EmptyString } ): JNodeList; { Throws } 
    procedure addBroadcastListenerFor(broadcaster: JElement; observer: JElement; attr: String); { Throws } 
    procedure removeBroadcastListenerFor(broadcaster: JElement; observer: JElement; attr: String);
    procedure persist(id: String { TreatNullAs=EmptyString } ; attr: String); { Throws } 
    function getBoxObjectFor(element: JElement): JBoxObject; { Throws } 
    procedure loadOverlay(url: String; observer: JMozObserver); { Throws } 
  end;