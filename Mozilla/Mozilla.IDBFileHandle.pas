unit Mozilla.IDBFileHandle;

interface

type
  JIDBFileMetadataParameters = class external 'IDBFileMetadataParameters'
  public
    size: Boolean;
    lastModified: Boolean;
  end;

  // Exposed=( Window , System)
  JIDBFileHandle = class external 'IDBFileHandle' (JEventTarget)
  public
    mutableFile: JIDBMutableFile;
    fileHandle: JIDBMutableFile;
    mode: JFileMode;
    active: Boolean;
    location: Integer;
    oncomplete: JEventHandler;
    onabort: JEventHandler;
    onerror: JEventHandler;
    function getMetadata: JIDBFileRequest; overload; { Throws } 
    function getMetadata(parameters: JIDBFileMetadataParameters): JIDBFileRequest; overload; { Throws } 
    function readAsArrayBuffer(size: Integer): JIDBFileRequest; { Throws } 
    function readAsText(size: Integer; encoding: String = ): JIDBFileRequest; { Throws } 
    function write(value: Union): JIDBFileRequest; { Throws } 
    function append(value: Union): JIDBFileRequest; { Throws } 
    function truncate: JIDBFileRequest; overload; { Throws } 
    function truncate(size: Integer): JIDBFileRequest; overload; { Throws } 
    function flush: JIDBFileRequest; { Throws } 
    procedure abort; { Throws } 
  end;

implementation

end.
