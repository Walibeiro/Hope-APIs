unit Mozilla.NamedNodeMap;

interface

type
  // LegacyUnenumerableNamedProperties
  JNamedNodeMap = class external 'NamedNodeMap'
  public
    length: Integer;
    function getNamedItem(&name: String): JAttr;
    function setNamedItem(arg: JAttr): JAttr; { Throws,BinaryName=setNamedItemNS } 
    function removeNamedItem(&name: String): JAttr; { Throws } 
    function item(&index: Integer): JAttr;
    function getNamedItemNS(namespaceURI: String; localName: String): JAttr;
    function setNamedItemNS(arg: JAttr): JAttr; { Throws } 
    function removeNamedItemNS(namespaceURI: String; localName: String): JAttr; { Throws } 
  end;

implementation

end.
