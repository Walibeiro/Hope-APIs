unit Mozilla.DominatorTree;

interface

type
  TNodeId = Integer;
  TNodeSize = Integer;
  // ChromeOnly,Exposed=( Window , System , Worker)
  JDominatorTree = class external 'DominatorTree'
  public
    root: TNodeId;
    function getRetainedSize(node: TNodeId): TNodeSize; { Throws } 
    function getImmediatelyDominated(node: TNodeId): array of TNodeId; { Throws } 
    function getImmediateDominator(node: TNodeId): TNodeId;
  end;

implementation

end.
