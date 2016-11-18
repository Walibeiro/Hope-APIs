unit Mozilla.XPathResult;

interface

type
  JXPathResult = class external 'XPathResult'
  const 
    ANY_TYPE: Integer = 0;
    NUMBER_TYPE: Integer = 1;
    STRING_TYPE: Integer = 2;
    BOOLEAN_TYPE: Integer = 3;
    UNORDERED_NODE_ITERATOR_TYPE: Integer = 4;
    ORDERED_NODE_ITERATOR_TYPE: Integer = 5;
    UNORDERED_NODE_SNAPSHOT_TYPE: Integer = 6;
    ORDERED_NODE_SNAPSHOT_TYPE: Integer = 7;
    ANY_UNORDERED_NODE_TYPE: Integer = 8;
    FIRST_ORDERED_NODE_TYPE: Integer = 9;
  public
    resultType: Integer;
    numberValue: Float; { Throws } 
    stringValue: String; { Throws } 
    booleanValue: Boolean; { Throws } 
    singleNodeValue: JNode; { Throws } 
    invalidIteratorState: Boolean;
    snapshotLength: Integer; { Throws } 
    function iterateNext: JNode; { Throws } 
    function snapshotItem(&index: Integer): JNode; { Throws } 
  end;