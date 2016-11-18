unit Mozilla.TextClause;

interface

type
  // ChromeOnly
  JTextClause = class external 'TextClause'
  public
    startOffset: Integer;
    endOffset: Integer;
    isCaret: Boolean;
    isTargetClause: Boolean;
  end;

implementation

end.
