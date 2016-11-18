unit Mozilla.XMLDocument;

interface

type
  JXMLDocument = class external 'XMLDocument' (JDocument)
  public
    async: Boolean;
    function load(url: String): Boolean; { Throws } 
  end;