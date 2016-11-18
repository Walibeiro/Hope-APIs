unit Mozilla.TimeRanges;

interface

type
  JTimeRanges = class external 'TimeRanges'
  public
    length: Integer;
    function start(&index: Integer): Float; { Throws } 
    function end(&index: Integer): Float; { Throws } 
  end;

implementation

end.
