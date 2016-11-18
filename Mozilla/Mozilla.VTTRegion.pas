unit Mozilla.VTTRegion;

interface

type
  // Constructor,Pref=media.webvtt.regions.enabled
  JVTTRegion = class external 'VTTRegion'
  public
    width: Float; { SetterThrows } 
    lines: Integer;
    regionAnchorX: Float; { SetterThrows } 
    regionAnchorY: Float; { SetterThrows } 
    viewportAnchorX: Float; { SetterThrows } 
    viewportAnchorY: Float; { SetterThrows } 
    scroll: String; { SetterThrows } 
  end;

implementation

end.
