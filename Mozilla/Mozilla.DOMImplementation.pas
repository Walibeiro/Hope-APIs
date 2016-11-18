unit Mozilla.DOMImplementation;

interface

type
  JDOMImplementation = class external 'DOMImplementation'
  public
    function hasFeature: Boolean;
    function createDocumentType(qualifiedName: String; publicId: String; systemId: String): JDocumentType; { Throws } 
    function createDocument(&namespace: String; qualifiedName: String { TreatNullAs=EmptyString } ; doctype: JDocumentType = ): JDocument; { Throws } 
    function createHTMLDocument: JDocument; overload; { Throws } 
    function createHTMLDocument(title: String): JDocument; overload; { Throws } 
  end;

implementation

end.
