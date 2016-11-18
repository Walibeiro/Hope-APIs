unit Mozilla.HTMLTableCellElement;

interface

type
  JHTMLTableCellElement = class external 'HTMLTableCellElement' (JHTMLElement)
  public
    colSpan: Integer; { SetterThrows } 
    rowSpan: Integer; { SetterThrows } 
    headers: String; { SetterThrows } 
    cellIndex: Integer;
    abbr: String; { SetterThrows } 
    scope: String; { SetterThrows } 
    align: String; { SetterThrows } 
    axis: String; { SetterThrows } 
    height: String; { SetterThrows } 
    width: String; { SetterThrows } 
    ch: String; { SetterThrows } 
    chOff: String; { SetterThrows } 
    noWrap: Boolean; { SetterThrows } 
    vAlign: String; { SetterThrows } 
    bgColor: String; { TreatNullAs=EmptyString,SetterThrows } 
  end;

implementation

end.
