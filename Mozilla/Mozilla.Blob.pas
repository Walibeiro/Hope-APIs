unit Mozilla.Blob;

interface

type
  TBlobPart = Union;
  // Constructor( optional sequence < BlobPart > blobParts , optional BlobPropertyBag options),Exposed=( Window , Worker)
  JBlob = class external 'Blob'
  public
    size: Integer; { GetterThrows } 
    type: String;
    function slice(; contentType: String = ): JBlob; overload; { Throws } 
    function slice(start: Integer { Clamp } ; contentType: String = ): JBlob; overload; { Throws } 
    function slice(start: Integer { Clamp } ; &end: Integer { Clamp } ; contentType: String = ): JBlob; overload; { Throws } 
  end;

  JEndingTypes = (etTransparent, etNative);

  JBlobPropertyBag = class external 'BlobPropertyBag'
  public
    &type: String;
    endings: JEndingTypes;
  end;

implementation

end.
