unit Mozilla.HeapSnapshot;

interface

type
  // ChromeOnly,Exposed=( Window , System , Worker)
  JHeapSnapshot = class external 'HeapSnapshot'
  public
    creationTime: Integer;
    function takeCensus(options: Variant): Variant; { Throws } 
    function describeNode(breakdown: Variant; node: JNodeId): Variant; { Throws } 
    function computeDominatorTree: JDominatorTree; { Throws } 
    function computeShortestPaths(start: JNodeId; targets: array of JNodeId; maxNumPaths: Integer): Variant; { Throws } 
  end;

implementation

end.
