unit ECMA.Map;

interface

type
  TForEachCallback = procedure(Key, Value: Variant);
  
  JMap = class external 'Map'
  public
    size: Integer; 
    constructor Create; overload;
    constructor Create(iterable: Variant); overload;
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