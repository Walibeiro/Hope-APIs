unit Mozilla.DocumentType;

interface

type
  JDocumentType = class external 'DocumentType' (JNode)
  public
    name: String;
    publicId: String;
    systemId: String;
  end;

implementation

end.
