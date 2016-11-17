unit WHATWG.Console;

interface

type
  // Exposed = (Window, Worker, Worklet)
  JConsole = class external 'console'
  public
    procedure assert(condition: Boolean = False); overload;
    procedure assert(condition: Boolean; data: Variant); overload;
    procedure clear;
    procedure count; overload;
    procedure count(label: String); overload;
    procedure debug(data: Variant);
    procedure error(data: Variant);
    procedure info(data: Variant);
    procedure log(data: Variant);
    procedure table(tabularData: Variant); overload;
    procedure table(tabularData: Variant; properties: array of String); overload;
    procedure trace(data: Variant);
    procedure warn(data: Variant);
    procedure group(data: Variant);
    procedure groupCollapsed(data: Variant);
    procedure groupEnd;
    procedure time; overload;
    procedure time(label: String); overload;
    procedure timeEnd; overload;
    procedure timeEnd(label: String); overload;
  end;

