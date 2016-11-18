unit Mozilla.Selection;

interface

type
  JSelection = class external 'Selection'
  const 
    ENDOFPRECEDINGLINE: Integer = 0;
    STARTOFNEXTLINE: Integer = 1;
  public
    anchorNode: JNode;
    anchorOffset: Integer;
    focusNode: JNode;
    focusOffset: Integer;
    isCollapsed: Boolean;
    rangeCount: Integer;
    interlinePosition: Boolean; { ChromeOnly,Throws } 
    caretBidiLevel: Integer; { Throws } 
    type: Integer; { ChromeOnly,BinaryName=rawType } 
    procedure collapse(node: JNode; offset: Integer); { Throws } 
    procedure collapseToStart; { Throws } 
    procedure collapseToEnd; { Throws } 
    procedure extend(node: JNode; offset: Integer); { Throws } 
    procedure selectAllChildren(node: JNode); { Throws } 
    procedure deleteFromDocument; { Throws } 
    function getRangeAt(&index: Integer): JRange; { Throws } 
    procedure addRange(range: JRange); { Throws } 
    procedure removeRange(range: JRange); { Throws } 
    procedure removeAllRanges; { Throws } 
    function containsNode(node: JNode; allowPartialContainment: Boolean): Boolean; { Throws } 
    procedure modify(alter: String; direction: String; granularity: String); { Throws } 
    function toStringWithFormat(formatType: String; &flags: Integer; wrapColumn: Integer): String; { ChromeOnly,Throws } 
    procedure addSelectionListener(newListener: JnsISelectionListener); { ChromeOnly,Throws } 
    procedure removeSelectionListener(listenerToRemove: JnsISelectionListener); { ChromeOnly,Throws } 
    function GetRangesForInterval(beginNode: JNode; beginOffset: Integer; endNode: JNode; endOffset: Integer; allowAdjacent: Boolean): array of JRange; { ChromeOnly,Throws,Pref=dom.testing.selection.GetRangesForInterval } 
    procedure scrollIntoView(aRegion: Integer; aIsSynchronous: Boolean; aVPercent: Integer; aHPercent: Integer); { ChromeOnly,Throws } 
  end;

implementation

end.
