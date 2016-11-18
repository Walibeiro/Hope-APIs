unit Mozilla.ListBoxObject;

interface

type
  // NoInterfaceObject
  JListBoxObject = class external 'ListBoxObject' (JBoxObject)
  public
    function getRowCount: Integer;
    function getNumberOfVisibleRows: Integer;
    function getIndexOfFirstVisibleRow: Integer;
    procedure ensureIndexIsVisible(rowIndex: Integer);
    procedure scrollToIndex(rowIndex: Integer);
    procedure scrollByLines(numLines: Integer);
    function getItemAtIndex(&index: Integer): JElement;
    function getIndexOfItem(item: JElement): Integer;
  end;

implementation

end.
