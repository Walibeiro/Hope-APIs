unit Mozilla.ScrollBoxObject;

interface

type
  // NoInterfaceObject
  JScrollBoxObject = class external 'ScrollBoxObject' (JBoxObject)
  public
    positionX: Integer; { Pure,Throws } 
    positionY: Integer; { Pure,Throws } 
    scrolledWidth: Integer; { Pure,Throws } 
    scrolledHeight: Integer; { Pure,Throws } 
    procedure scrollTo(x: Integer; y: Integer); { Throws } 
    procedure scrollBy(dx: Integer; dy: Integer); { Throws } 
    procedure scrollByLine(dlines: Integer); { Throws } 
    procedure scrollByIndex(dindexes: Integer); { Throws } 
    procedure scrollToLine(line: Integer); { Throws } 
    procedure scrollToElement(child: JElement); { Throws } 
    procedure scrollToIndex(&index: Integer); { Throws } 
    procedure getPosition(x: Variant; y: Variant); { Throws } 
    procedure getScrolledSize(width: Variant; height: Variant); { Throws } 
    procedure ensureElementIsVisible(child: JElement); { Throws } 
    procedure ensureIndexIsVisible(&index: Integer); { Throws } 
    procedure ensureLineIsVisible(line: Integer); { Throws } 
  end;

implementation

end.
