unit ECMA.RegEx;

interface

type
  JRegexFlags = class external 
    global: Boolean
    ignoreCase: Boolean;
    multiline: Boolean;
    unicode: Boolean;
    sticky: Boolean;
  end; 

  JRegEx = class external 'RegEx'
  public
    flags: JRegexFlags; 
    global: Boolean
    ignoreCase: Boolean;
    multiline: Boolean;
    source: String;
    sticky: Boolean;
    unicode: Boolean;
    
    constructor Create(pattern: String; flags: String);
    function exec(value: String): array of string;
    function test(value: Variant): Boolean;
    function toSource: String; // non-standard
    function toString: String;
    procedure compile(pattern: String; flags: String);
    class procedure input: String;
    class procedure lastMatch: String;
    class procedure lastParen: String;
    class procedure leftContext: String;
    class procedure rightContext: String;
  end;