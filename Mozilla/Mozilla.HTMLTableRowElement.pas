unit Mozilla.HTMLTableRowElement;

interface

type
  JHTMLTableRowElement = class external 'HTMLTableRowElement' (JHTMLElement)
  public
    rowIndex: Integer;
    sectionRowIndex: Integer;
    cells: JHTMLCollection;
    align: String; { SetterThrows } 
    ch: String; { SetterThrows } 
    chOff: String; { SetterThrows } 
    vAlign: String; { SetterThrows } 
    bgColor: String; { TreatNullAs=EmptyString,SetterThrows } 
    function insertCell(&index: Integer = -1): JHTMLElement; { Throws } 
    procedure deleteCell(&index: Integer); { Throws } 
  end;

implementation

end.
