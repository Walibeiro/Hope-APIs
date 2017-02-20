unit ECMA.Console;

interface

type
  JConsole = class external 'Console'
  public
    procedure log(data: Variant); overload;
    procedure log(data, data2: Variant); overload;
    procedure log(const data: array of const); overload;
  end;

var Console external 'console': JConsole;