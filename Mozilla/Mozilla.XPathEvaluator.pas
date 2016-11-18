unit Mozilla.XPathEvaluator;

interface

type
  JXPathEvaluator = class external 'XPathEvaluator'
  public
    constructor Create;
    function createExpression(expression: String; resolver: JXPathNSResolver): JXPathExpression; { NewObject,Throws } 
    function createNSResolver(nodeResolver: JNode): JNode; { Pure } 
    function evaluate(expression: String; contextNode: JNode; resolver: JXPathNSResolver; &type: Integer; result: Variant): JXPathResult; { Throws } 
  end;