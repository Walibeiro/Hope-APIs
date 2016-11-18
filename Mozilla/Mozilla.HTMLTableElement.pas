unit Mozilla.HTMLTableElement;

interface

type
  JHTMLTableElement = class external 'HTMLTableElement' (JHTMLElement)
  public
    caption: JHTMLTableCaptionElement; { SetterThrows } 
    tHead: JHTMLTableSectionElement; { SetterThrows } 
    tFoot: JHTMLTableSectionElement; { SetterThrows } 
    tBodies: JHTMLCollection;
    rows: JHTMLCollection;
    align: String; { SetterThrows } 
    border: String; { SetterThrows } 
    frame: String; { SetterThrows } 
    rules: String; { SetterThrows } 
    summary: String; { SetterThrows } 
    width: String; { SetterThrows } 
    bgColor: String; { TreatNullAs=EmptyString,SetterThrows } 
    cellPadding: String; { TreatNullAs=EmptyString,SetterThrows } 
    cellSpacing: String; { TreatNullAs=EmptyString,SetterThrows } 
    function createCaption: JHTMLElement;
    procedure deleteCaption;
    function createTHead: JHTMLElement;
    procedure deleteTHead;
    function createTFoot: JHTMLElement;
    procedure deleteTFoot;
    function createTBody: JHTMLElement;
    function insertRow(&index: Integer = -1): JHTMLElement; { Throws } 
    procedure deleteRow(&index: Integer); { Throws } 
  end;

implementation

end.
