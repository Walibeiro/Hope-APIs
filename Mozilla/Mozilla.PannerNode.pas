unit Mozilla.PannerNode;

interface

type
  JPanningModelType = (pmtEqualpower, pmtHRTF);

  JDistanceModelType = (dmtLinear, dmtInverse, dmtExponential);

  // Pref=dom.webaudio.enabled
  JPannerNode = class external 'PannerNode' (JAudioNode)
  public
    panningModel: JPanningModelType;
    positionX: JAudioParam;
    positionY: JAudioParam;
    positionZ: JAudioParam;
    orientationX: JAudioParam;
    orientationY: JAudioParam;
    orientationZ: JAudioParam;
    distanceModel: JDistanceModelType;
    refDistance: Float;
    maxDistance: Float;
    rolloffFactor: Float;
    coneInnerAngle: Float;
    coneOuterAngle: Float;
    coneOuterGain: Float;
    procedure setPosition(x: Float; y: Float; z: Float);
    procedure setOrientation(x: Float; y: Float; z: Float);
    procedure setVelocity(x: Float; y: Float; z: Float); { Deprecated=PannerNodeDoppler } 
  end;

implementation

end.
