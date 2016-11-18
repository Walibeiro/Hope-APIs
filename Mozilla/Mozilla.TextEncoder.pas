unit Mozilla.TextEncoder;

interface

type
  // Constructor,Exposed=( Window , Worker , System)
  JTextEncoder = class external 'TextEncoder'
  public
    encoding: String; { Constant } 
    function encode(input: JUSVString = ): JUint8Array; { NewObject } 
  end;

implementation

end.
