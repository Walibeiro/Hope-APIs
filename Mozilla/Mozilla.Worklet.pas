unit Mozilla.Worklet;

interface

type
  // Pref=dom.worklet.enabled
  JWorklet = class external 'Worklet'
  public
    function import(moduleURL: JUSVString): void; { NewObject,Throws } 
  end;

implementation

end.
