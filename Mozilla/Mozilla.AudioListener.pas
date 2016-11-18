unit Mozilla.AudioListener;

interface

type
  // Pref=dom.webaudio.enabled
  JAudioListener = class external 'AudioListener'
  public
    dopplerFactor: Float; { Deprecated=PannerNodeDoppler } 
    speedOfSound: Float; { Deprecated=PannerNodeDoppler } 
    procedure setPosition(x: Float; y: Float; z: Float);
    procedure setOrientation(x: Float; y: Float; z: Float; xUp: Float; yUp: Float; zUp: Float);
    procedure setVelocity(x: Float; y: Float; z: Float); { Deprecated=PannerNodeDoppler } 
  end;

implementation

end.
