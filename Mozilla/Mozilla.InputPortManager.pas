unit Mozilla.InputPortManager;

interface

type
  // Pref=dom.inputport.enabled,ChromeOnly
  JInputPortManager = class external 'InputPortManager'
  public
    function getInputPorts: array of InputPort; { Throws } 
  end;

implementation

end.
