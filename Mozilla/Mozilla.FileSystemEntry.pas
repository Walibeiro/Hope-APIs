unit Mozilla.FileSystemEntry;

interface

type
  JFileSystemEntry = class external 'FileSystemEntry'
  public
    isFile: Boolean;
    isDirectory: Boolean;
    name: JUSVString; { GetterThrows } 
    fullPath: JUSVString; { GetterThrows } 
    filesystem: JFileSystem;
    procedure getParent; overload;
    procedure getParent(successCallback: JFileSystemEntryCallback); overload;
    procedure getParent(successCallback: JFileSystemEntryCallback; errorCallback: JErrorCallback); overload;
  end;

implementation

end.
