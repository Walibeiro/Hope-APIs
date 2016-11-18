unit Mozilla.AudioDestinationNode;

interface

type
  // Pref=dom.webaudio.enabled
  JAudioDestinationNode = class external 'AudioDestinationNode' (JAudioNode)
  public
    maxChannelCount: Integer;
  end;

implementation

end.
