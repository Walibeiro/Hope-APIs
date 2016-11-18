unit Mozilla.BlobEvent;

interface

type
  // Constructor( DOMString type , optional BlobEventInit eventInitDict)
  JBlobEvent = class external 'BlobEvent' (JEvent)
  public
    data: JBlob;
  end;

  JBlobEventInit = class external 'BlobEventInit' (JEventInit)
  public
    data: JBlob;
  end;

implementation

end.
