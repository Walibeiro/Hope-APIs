unit Mozilla.FileSystemFileEntry;

interface

type
  JFileCallback = class external 'FileCallback'
  public
    procedure handleEvent(file: JFile);
  end;

  JFileSystemFileEntry = class external 'FileSystemFileEntry' (JFileSystemEntry)
  public
    procedure file(successCallback: JFileCallback); overload; { BinaryName=GetFile } 
    procedure file(successCallback: JFileCallback; errorCallback: JErrorCallback); overload; { BinaryName=GetFile } 
  end;

implementation

end.
