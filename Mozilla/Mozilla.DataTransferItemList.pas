unit Mozilla.DataTransferItemList;

interface

type
  JDataTransferItemList = class external 'DataTransferItemList'
  public
    length: Integer;
    function (&index: Integer): JDataTransferItem;
    function add(data: String; &type: String): JDataTransferItem; { Throws,NeedsSubjectPrincipal } 
    function add(data: JFile): JDataTransferItem; { Throws,NeedsSubjectPrincipal } 
    procedure remove(&index: Integer); { Throws,NeedsSubjectPrincipal } 
    procedure clear; { Throws,NeedsSubjectPrincipal } 
  end;

implementation

end.
