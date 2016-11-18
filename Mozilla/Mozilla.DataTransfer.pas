unit Mozilla.DataTransfer;

interface

type
  // ChromeConstructor( DOMString eventType , boolean isExternal)
  JDataTransfer = class external 'DataTransfer'
  public
    dropEffect: String;
    effectAllowed: String;
    items: JDataTransferItemList;
    types: array of String; { Pure,Cached,Frozen,NeedsSubjectPrincipal,ReturnValueNeedsContainsHack } 
    files: JFileList; { Throws,NeedsSubjectPrincipal } 
    mozItemCount: Integer;
    mozCursor: String;
    mozUserCancelled: Boolean;
    mozSourceNode: JNode;
    procedure setDragImage(image: JElement; x: Integer; y: Integer); { Throws } 
    function getData(format: String): String; { Throws,NeedsSubjectPrincipal } 
    procedure setData(format: String; data: String); { Throws,NeedsSubjectPrincipal } 
    procedure clearData; overload; { Throws,NeedsSubjectPrincipal } 
    procedure clearData(format: String); overload; { Throws,NeedsSubjectPrincipal } 
    function getFilesAndDirectories: array of union; { Throws,Pref=dom.input.dirpicker,NeedsSubjectPrincipal } 
    function getFiles(recursiveFlag: Boolean = False): array of File; { Throws,Pref=dom.input.dirpicker,NeedsSubjectPrincipal } 
    procedure addElement(element: JElement); { Throws } 
    function mozTypesAt(&index: Integer): JDOMStringList; { Throws } 
    procedure mozClearDataAt(format: String; &index: Integer); { Throws,NeedsSubjectPrincipal } 
    procedure mozSetDataAt(format: String; data: Variant; &index: Integer); { Throws,NeedsSubjectPrincipal } 
    function mozGetDataAt(format: String; &index: Integer): Variant; { Throws,NeedsSubjectPrincipal } 
  end;

implementation

end.
