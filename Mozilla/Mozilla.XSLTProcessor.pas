unit Mozilla.XSLTProcessor;

interface

type
  // Constructor
  JXSLTProcessor = class external 'XSLTProcessor'
  const 
    DISABLE_ALL_LOADS: Integer = 1;
  public
    flags: Integer; { ChromeOnly } 
    procedure importStylesheet(style: JNode); { Throws } 
    function transformToFragment(source: JNode; output: JDocument): JDocumentFragment; { Throws } 
    function transformToDocument(source: JNode): JDocument; { Throws } 
    procedure setParameter(namespaceURI: String { TreatNullAs=EmptyString } ; localName: String; value: Variant); { Throws } 
    function getParameter(namespaceURI: String { TreatNullAs=EmptyString } ; localName: String): JnsIVariant; { Throws } 
    procedure removeParameter(namespaceURI: String { TreatNullAs=EmptyString } ; localName: String); { Throws } 
    procedure clearParameters;
    procedure reset;
  end;