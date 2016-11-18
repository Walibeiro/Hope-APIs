unit Mozilla.Pose;

interface

type
  JPose = class external 'Pose'
  public
    position: JFloat32Array; { Constant,Throws } 
    linearVelocity: JFloat32Array; { Constant,Throws } 
    linearAcceleration: JFloat32Array; { Constant,Throws } 
    orientation: JFloat32Array; { Constant,Throws } 
    angularVelocity: JFloat32Array; { Constant,Throws } 
    angularAcceleration: JFloat32Array; { Constant,Throws } 
  end;

implementation

end.
