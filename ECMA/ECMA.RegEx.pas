unit ECMA.RegEx;

interface

type
  JRegexFlags = class external 
    global: Boolean;
    ignoreCase: Boolean;
    multiline: Boolean;
    unicode: Boolean;
    sticky: Boolean;
  end; 

  JRegEx = class external 'RegEx'
  public
    flags: JRegexFlags; 
    global: Boolean;
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
    class function input: String;
    class function lastMatch: String;
    class function lastParen: String;
    class function leftContext: String;
    class function rightContext: String;
  end;