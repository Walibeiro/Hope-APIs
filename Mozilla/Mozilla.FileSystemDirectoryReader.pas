unit Mozilla.FileSystemDirectoryReader;

interface

type
  JFileSystemEntriesCallback = class external 'FileSystemEntriesCallback'
  public
    procedure handleEvent(entries: array of JFileSystemEntry);
  end;

  JFileSystemDirectoryReader = class external 'FileSystemDirectoryReader'
  public
    procedure readEntries(successCallback: JFileSystemEntriesCallback); overload; { Throws } 
    procedure readEntries(successCallback: JFileSystemEntriesCallback; errorCallback: JErrorCallback); overload; { Throws } 
  end;

implementation

end.
