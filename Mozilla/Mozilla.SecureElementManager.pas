unit Mozilla.SecureElementManager;

interface

type
  // Pref=dom.secureelement.enabled,ChromeOnly,JSImplementation=@mozilla.org/secureelement/manager;1,NavigatorProperty=seManager,NoInterfaceObject
  JSEManager = class external 'SEManager'
  public
    function getSEReaders: array of SEReader; { Throws } 
  end;

implementation

end.
