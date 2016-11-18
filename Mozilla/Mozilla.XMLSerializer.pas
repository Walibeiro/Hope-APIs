unit Mozilla.XMLSerializer;

interface

type
  // Constructor
  JXMLSerializer = class external 'XMLSerializer'
  public
    constructor Create;
    function serializeToString(root: JNode): String; { Throws } 
    procedure serializeToStream(root: JNode; stream: JOutputStream; charset: String); { Throws,ChromeOnly } 
  end;