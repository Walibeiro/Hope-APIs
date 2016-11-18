unit Mozilla.WorkletGlobalScope;

interface

type
  // Global=( Worklet),Exposed=( Worklet)
  JWorkletGlobalScope = class external 'WorkletGlobalScope'
  public
    procedure dump; overload;
    procedure dump(str: String); overload;
  end;

implementation

end.
