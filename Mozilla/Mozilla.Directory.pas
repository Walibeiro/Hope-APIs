unit Mozilla.Directory;

interface

type
  // ChromeConstructor( DOMString path),Exposed=( Window , Worker)
  JDirectory = class external 'Directory'
  public
    name: String; { Throws } 
    path: String; { Throws } 
    function createFile(path: String): File; overload; { Func=mozilla::dom::Directory::DeviceStorageEnabled,NewObject } 
    function createFile(path: String; options: JCreateFileOptions): File; overload; { Func=mozilla::dom::Directory::DeviceStorageEnabled,NewObject } 
    function createDirectory(path: String): Directory; { Func=mozilla::dom::Directory::DeviceStorageEnabled,NewObject } 
    function get(path: String): union; { Func=mozilla::dom::Directory::DeviceStorageEnabled,NewObject } 
    function remove(path: Union): boolean; { Func=mozilla::dom::Directory::DeviceStorageEnabled,NewObject } 
    function removeDeep(path: Union): boolean; { Func=mozilla::dom::Directory::DeviceStorageEnabled,NewObject } 
    function getFilesAndDirectories: array of union; { Throws } 
    function getFiles(recursiveFlag: Boolean = False): array of File; { Throws } 
  end;

  JCreateIfExistsMode = (ciemReplace, ciemFail);

  JCreateFileOptions = class external 'CreateFileOptions'
  public
    ifExists: JCreateIfExistsMode;
    data: Union;
  end;

implementation

end.
