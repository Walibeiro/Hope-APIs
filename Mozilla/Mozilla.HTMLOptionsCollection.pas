unit Mozilla.HTMLOptionsCollection;

interface

type
  JHTMLOptionsCollection = class external 'HTMLOptionsCollection' (JHTMLCollection)
  public
    length: Integer;
    selectedIndex: Integer; { Throws } 
    procedure (&index: Integer; option: JHTMLOptionElement); { Throws } 
    procedure add(element: Union; before: Union = ); { Throws } 
    procedure remove(&index: Integer); { Throws } 
  end;

implementation

end.
