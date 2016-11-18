unit Mozilla.XPathNSResolver;

interface

type
  JXPathNSResolver = class external 'XPathNSResolver'
  public
    function lookupNamespaceURI(prefix: String): String;
  end;