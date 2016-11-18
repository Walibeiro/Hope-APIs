unit Mozilla.AudioNode;

interface

type
  JChannelCountMode = (ccmMax, ccmClamped-max, ccmExplicit);

  JChannelInterpretation = (ciSpeakers, ciDiscrete);

  // Pref=dom.webaudio.enabled
  JAudioNode = class external 'AudioNode' (JEventTarget)
  public
    context: JAudioContext;
    numberOfInputs: Integer;
    numberOfOutputs: Integer;
    channelCount: Integer; { SetterThrows } 
    channelCountMode: JChannelCountMode; { SetterThrows } 
    channelInterpretation: JChannelInterpretation;
    id: Integer; { ChromeOnly } 
    function connect(destination: JAudioNode; output: Integer = 0; input: Integer = 0): JAudioNode; { Throws } 
    procedure connect(destination: JAudioParam; output: Integer = 0); { Throws } 
    procedure disconnect; { Throws } 
    procedure disconnect(output: Integer); { Throws } 
    procedure disconnect(destination: JAudioNode); { Throws } 
    procedure disconnect(destination: JAudioNode; output: Integer); { Throws } 
    procedure disconnect(destination: JAudioNode; output: Integer; input: Integer); { Throws } 
    procedure disconnect(destination: JAudioParam); { Throws } 
    procedure disconnect(destination: JAudioParam; output: Integer); { Throws } 
  end;

  // NoInterfaceObject
  JAudioNodePassThrough = class external 'AudioNodePassThrough'
  public
    passThrough: Boolean; { ChromeOnly } 
  end;

implementation

end.
