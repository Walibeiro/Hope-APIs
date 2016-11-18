unit Mozilla.IDBMutableFile;

interface

type
  // Exposed=( Window , System)
  JIDBMutableFile = class external 'IDBMutableFile' (JEventTarget)
  public
    name: String;
    type: String;
    database: JIDBDatabase;
    onabort: JEventHandler;
    onerror: JEventHandler;
    function open(mode: JFileMode = readonly): JIDBFileHandle; { Throws } 
    function getFile: JDOMRequest; { Throws } 
  end;

implementation

end.
