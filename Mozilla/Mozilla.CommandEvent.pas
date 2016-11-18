unit Mozilla.CommandEvent;

interface

type
  JCommandEvent = class external 'CommandEvent' (JEvent)
  public
    command: String;
    procedure initCommandEvent(&type: String; canBubble: Boolean; cancelable: Boolean; command: String);
  end;

implementation

end.
