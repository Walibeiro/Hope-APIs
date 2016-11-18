unit Mozilla.ScriptProcessorNode;

interface

type
  // Pref=dom.webaudio.enabled
  JScriptProcessorNode = class external 'ScriptProcessorNode' (JAudioNode)
  public
    onaudioprocess: JEventHandler;
    bufferSize: Integer;
  end;

implementation

end.
