unit Mozilla.DataTransferItem;

interface

type
  JDataTransferItem = class external 'DataTransferItem'
  public
    kind: String;
    type: String;
    procedure getAsString(_callback: JFunctionStringCallback); { Throws,NeedsSubjectPrincipal } 
    function getAsFile: JFile; { Throws,NeedsSubjectPrincipal } 
    function webkitGetAsEntry: JFileSystemEntry; { Pref=dom.webkitBlink.filesystem.enabled,BinaryName=getAsEntry,Throws,NeedsSubjectPrincipal } 
  end;

  JFunctionStringCallback = procedure(data: String);

implementation

end.
