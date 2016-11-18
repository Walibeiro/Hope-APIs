unit Mozilla.TreeBoxObject;

interface

type
  JTreeCellInfo = class external 'TreeCellInfo'
  public
    row: Integer;
    col: JTreeColumn;
    childElt: String;
  end;

  // NoInterfaceObject
  JTreeBoxObject = class external 'TreeBoxObject' (JBoxObject)
  public
    columns: JTreeColumns;
    view: JMozTreeView; { SetterThrows } 
    focused: Boolean;
    treeBody: JElement;
    rowHeight: Integer;
    rowWidth: Integer;
    horizontalPosition: Integer;
    selectionRegion: JnsIScriptableRegion;
    function getFirstVisibleRow: Integer;
    function getLastVisibleRow: Integer;
    function getPageLength: Integer;
    procedure ensureRowIsVisible(&index: Integer);
    procedure ensureCellIsVisible(row: Integer; col: JTreeColumn);
    procedure scrollToRow(&index: Integer);
    procedure scrollByLines(numLines: Integer);
    procedure scrollByPages(numPages: Integer);
    procedure scrollToCell(row: Integer; col: JTreeColumn);
    procedure scrollToColumn(col: JTreeColumn);
    procedure scrollToHorizontalPosition(horizontalPosition: Integer);
    procedure invalidate;
    procedure invalidateColumn(col: JTreeColumn);
    procedure invalidateRow(&index: Integer);
    procedure invalidateCell(row: Integer; col: JTreeColumn);
    procedure invalidateRange(startIndex: Integer; endIndex: Integer);
    procedure invalidateColumnRange(startIndex: Integer; endIndex: Integer; col: JTreeColumn);
    function getRowAt(x: Integer; y: Integer): Integer;
    function getCellAt(x: Integer; y: Integer): JTreeCellInfo; { Throws } 
    procedure getCellAt(x: Integer; y: Integer; row: Variant; column: Variant; childElt: Variant); { Throws } 
    function getCoordsForCellItem(row: Integer; col: JTreeColumn; element: String): JDOMRect; { Throws } 
    procedure getCoordsForCellItem(row: Integer; col: JTreeColumn; element: String; x: Variant; y: Variant; width: Variant; height: Variant); { Throws } 
    function isCellCropped(row: Integer; col: JTreeColumn): Boolean; { Throws } 
    procedure rowCountChanged(&index: Integer; count: Integer);
    procedure beginUpdateBatch;
    procedure endUpdateBatch;
    procedure clearStyleAndImageCaches;
  end;

implementation

end.
