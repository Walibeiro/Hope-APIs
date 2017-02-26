unit WHATWG.Console;

interface

type
  // Exposed = (Window, Worker, Worklet)
  JConsole = class external 'console'
  public
    // Logging
    procedure assert(condition: Boolean = False); overload;
    procedure assert(condition: Boolean; data: Variant); overload;
    procedure assert(condition: Boolean; data1, data2: Variant); overload;
    procedure assert(condition: Boolean; data1, data2, data3: Variant); overload;
    procedure assert(condition: Boolean; const data: array of const); overload;
    procedure clear;
    procedure count; overload;
    procedure count(label: String); overload;
    procedure debug(data: Variant); overload;
    procedure debug(data1, data2: Variant); overload;
		procedure debug(data1, data2, data3: Variant); overload;
    procedure debug(const data: array of const); overload;
    procedure error(data: Variant); overload;
    procedure error(data1, data2: Variant); overload;
		procedure error(data1, data2, data3: Variant); overload;
    procedure error(const data: array of const); overload;
    procedure info(data: Variant); overload;
    procedure info(data1, data2: Variant); overload;
		procedure info(data1, data2, data3: Variant); overload;
    procedure info(const data: array of const); overload;
    procedure log(data: Variant); overload;
    procedure log(data1, data2: Variant); overload;
		procedure log(data1, data2, data3: Variant); overload;
    procedure log(const data: array of const); overload;
    procedure table(tabularData: Variant); overload;
    procedure table(tabularData: Variant; properties: array of String); overload;
    procedure trace(data: Variant);
    procedure trace(data1, data2: Variant); overload;
		procedure trace(data1, data2, data3: Variant); overload;
    procedure trace(const data: array of const); overload;
    procedure warn(data: Variant);
    procedure warn(data1, data2: Variant); overload;
		procedure warn(data1, data2, data3: Variant); overload;
    procedure warn(const data: array of const); overload;

    // Grouping
    procedure group(data: Variant);
    procedure groupCollapsed(data: Variant);
    procedure groupEnd;

    // Timing
    procedure time; overload;
    procedure time(label: String); overload;
    procedure timeEnd; overload;
    procedure timeEnd(label: String); overload;
  end;

var
  Console external 'console': JConsole;