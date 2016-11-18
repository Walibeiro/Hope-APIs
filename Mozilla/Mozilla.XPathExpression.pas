unit Mozilla.XPathExpression;

interface

type
  JXPathExpression = class external 'XPathExpression'
  public
    function evaluate(contextNode: JNode; &type: Integer; result: Variant): JXPathResult; { Throws } 
    function evaluateWithContext(contextNode: JNode; contextPosition: Integer; contextSize: Integer; &type: Integer; result: Variant): JXPathResult; { Throws,ChromeOnly } 
  end;