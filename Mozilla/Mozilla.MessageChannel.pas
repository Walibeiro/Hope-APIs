unit Mozilla.MessageChannel;

interface

type
  // Constructor,Exposed=( Window , Worker)
  JMessageChannel = class external 'MessageChannel'
  public
    port1: JMessagePort;
    port2: JMessagePort;
  end;

implementation

end.
