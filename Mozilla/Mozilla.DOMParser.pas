unit Mozilla.DOMParser;

interface

type
  JSupportedType = (stText/html, stText/xml, stApplication/xml, stApplication/xhtml+xml, stImage/svg+xml);

  // Constructor,Constructor( Principal ? prin , optional URI ? documentURI = null , optional URI ? baseURI = null)
  JDOMParser = class external 'DOMParser'
  public
    function parseFromString(str: String; &type: JSupportedType): JDocument; { NewObject,Throws } 
    function parseFromBuffer(buf: array of Integer; bufLen: Integer; &type: JSupportedType): JDocument; { NewObject,Throws,ChromeOnly } 
    function parseFromBuffer(buf: JUint8Array; bufLen: Integer; &type: JSupportedType): JDocument; { NewObject,Throws,ChromeOnly } 
    function parseFromStream(stream: JInputStream; charset: String; contentLength: Integer; &type: JSupportedType): JDocument; { NewObject,Throws,ChromeOnly } 
    procedure init(principal: JPrincipal = ; documentURI: JURI = ; baseURI: JURI = ); { Throws,ChromeOnly } 
  end;

implementation

end.
