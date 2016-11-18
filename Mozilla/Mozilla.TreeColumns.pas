unit Mozilla.TreeColumns;

interface

type
  // Func=IsChromeOrXBL
  JTreeColumns = class external 'TreeColumns'
  public
    tree: JTreeBoxObject;
    count: Integer;
    length: Integer;
    function getFirstColumn: JTreeColumn;
    function getLastColumn: JTreeColumn;
    function getPrimaryColumn: JTreeColumn;
    function getSortedColumn: JTreeColumn;
    function getKeyColumn: JTreeColumn;
    function getColumnFor(element: JElement): JTreeColumn;
    function getNamedColumn(&name: String): JTreeColumn;
    function getColumnAt(&index: Integer): JTreeColumn;
    procedure invalidateColumns;
    procedure restoreNaturalOrder;
  end;

implementation

end.
