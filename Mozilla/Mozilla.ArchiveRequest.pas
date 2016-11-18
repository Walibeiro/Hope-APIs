unit Mozilla.ArchiveRequest;

interface

type
  // Pref=dom.archivereader.enabled
  JArchiveRequest = class external 'ArchiveRequest' (JDOMRequest)
  public
    reader: JArchiveReader;
  end;

implementation

end.
