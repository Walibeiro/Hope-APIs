unit ECMA.JSON;

interface

type
  TKeyValueFilter = function (Key: String; Value: Variant): Variant; 

  JJSON = class external 'JSON'
  public
    function parse(Text: String): Variant; overload;
    function parse(Text: String; Reviver: TKeyValueFilter): Variant; overload;
    function stringify(const Value: Variant): String; overload;
    function stringify(const Value: Variant; Replacer: TKeyValueFilter): String; overload;
    function stringify(const Value: Variant; Replacer: array of String): String; overload;
    function stringify(const Value: Variant; Replacer: TKeyValueFilter; Space: String): String; overload;
    function stringify(const Value: Variant; Replacer: array of String; Space: String): String; overload;
  end;

var
  JSON external 'JSON': JJSON;