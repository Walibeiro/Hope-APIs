unit Mozilla.CSSLexer;

interface

type
  JCSSTokenType = (whitespace, comment, ident, function, at, id, hash, number, dimension, percentage, string, bad_string, url, bad_url, symbol, includes, dashmatch, beginsmatch, endsmatch, containsmatch, urange, htmlcomment);

  JCSSToken = class external 'CSSToken'
  public
    tokenType: JCSSTokenType;
    startOffset: Integer;
    endOffset: Integer;
    number: Float;
    hasSign: Boolean;
    isInteger: Boolean;
    text: String;
  end;

  // ChromeOnly
  JCSSLexer = class external 'CSSLexer'
  public
    lineNumber: Integer;
    columnNumber: Integer;
    function performEOFFixup(inputString: String; preserveBackslash: Boolean): String;
    function nextToken: JCSSToken;
  end;

implementation

end.
