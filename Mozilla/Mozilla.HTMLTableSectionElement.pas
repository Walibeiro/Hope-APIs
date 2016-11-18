unit Mozilla.HTMLTableSectionElement;

interface

type
  JHTMLTableSectionElement = class external 'HTMLTableSectionElement' (JHTMLElement)
  public
    rows: JHTMLCollection;
    align: String; { SetterThrows } 
    ch: String; { SetterThrows } 
    chOff: String; { SetterThrows } 
    vAlign: String; { SetterThrows } 
    function insertRow(&index: Integer = -1): JHTMLElement; { Throws } 
    procedure deleteRow(&index: Integer); { Throws } 
  end;

implementation

end.
