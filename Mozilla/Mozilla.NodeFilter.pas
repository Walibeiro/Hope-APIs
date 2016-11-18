unit Mozilla.NodeFilter;

interface

type
  JNodeFilter = class external 'NodeFilter'
  const 
    FILTER_ACCEPT: Integer = 1;
    FILTER_REJECT: Integer = 2;
    FILTER_SKIP: Integer = 3;
    SHOW_ALL: Integer = 4294967295;
    SHOW_ELEMENT: Integer = 1;
    SHOW_ATTRIBUTE: Integer = 2;
    SHOW_TEXT: Integer = 4;
    SHOW_CDATA_SECTION: Integer = 8;
    SHOW_ENTITY_REFERENCE: Integer = 16;
    SHOW_ENTITY: Integer = 32;
    SHOW_PROCESSING_INSTRUCTION: Integer = 64;
    SHOW_COMMENT: Integer = 128;
    SHOW_DOCUMENT: Integer = 256;
    SHOW_DOCUMENT_TYPE: Integer = 512;
    SHOW_DOCUMENT_FRAGMENT: Integer = 1024;
    SHOW_NOTATION: Integer = 2048;
  public
    function acceptNode(node: JNode): Integer;
  end;

implementation

end.
