unit Mozilla.AudioParam;

interface

type
  // Pref=dom.webaudio.enabled
  JAudioParam = class external 'AudioParam'
  public
    value: Float;
    defaultValue: Float;
    parentNodeId: Integer; { ChromeOnly } 
    name: String; { ChromeOnly } 
    function setValueAtTime(value: Float; startTime: Float): JAudioParam; { Throws } 
    function linearRampToValueAtTime(value: Float; endTime: Float): JAudioParam; { Throws } 
    function exponentialRampToValueAtTime(value: Float; endTime: Float): JAudioParam; { Throws } 
    function setTargetAtTime(target: Float; startTime: Float; timeConstant: Float): JAudioParam; { Throws } 
    function setValueCurveAtTime(values: JFloat32Array; startTime: Float; duration: Float): JAudioParam; { Throws } 
    function cancelScheduledValues(startTime: Float): JAudioParam; { Throws } 
  end;

implementation

end.
