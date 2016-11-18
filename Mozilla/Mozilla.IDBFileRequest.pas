unit Mozilla.IDBFileRequest;

interface

type
  // Exposed=( Window , System)
  JIDBFileRequest = class external 'IDBFileRequest' (JDOMRequest)
  public
    fileHandle: JIDBFileHandle;
    lockedFile: JIDBFileHandle;
    onprogress: JEventHandler;
  end;

implementation

end.
