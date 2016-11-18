unit Mozilla.FileSystem;

interface

type
  JFileSystemFlags = class external 'FileSystemFlags'
  public
    create: Boolean;
    exclusive: Boolean;
  end;

  JFileSystemEntryCallback = class external 'FileSystemEntryCallback'
  public
    procedure handleEvent(entry: JFileSystemEntry);
  end;

  JVoidCallback = class external 'VoidCallback'
  public
    procedure handleEvent;
  end;

  JErrorCallback = class external 'ErrorCallback'
  public
    procedure handleEvent(err: JDOMException);
  end;

  JFileSystem = class external 'FileSystem'
  public
    name: JUSVString;
    root: JFileSystemDirectoryEntry;
  end;

implementation

end.
