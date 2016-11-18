unit ECMA.Map;

interface

type
  TForEachCallback = procedure(Key, Value: Variant);
  
  JMap = class external 'map'
  public
    size: Integer; 
    constructor Create(iterable: Variant);
    procedure clear;
    function delete(key: Variant): Boolean;
    function entries: Variant;
    procedure forEach(callback: TForEachCallback); overload;
    procedure forEach(callback: TForEachCallback; thisArg: Variant); overload;
    function get(key: Variant): Variant;
    function has(key: Variant): Boolean;
    function keys: Variant;
    function &set(key, value: Variant): Variant;
    function values: Variant;
  end;