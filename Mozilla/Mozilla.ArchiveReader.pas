unit Mozilla.ArchiveReader;

interface

type
  // Pref=dom.archivereader.enabled,Constructor( Blob blob , optional ArchiveReaderOptions options)
  JArchiveReader = class external 'ArchiveReader'
  public
    function getFilenames: JArchiveRequest;
    function getFile(filename: String): JArchiveRequest;
    function getFiles: JArchiveRequest;
  end;

  JArchiveReaderOptions = class external 'ArchiveReaderOptions'
  public
    encoding: String;
  end;

implementation

end.
