unit Mozilla.SVGTests;

interface

type
  // NoInterfaceObject
  JSVGTests = class external 'SVGTests'
  public
    requiredFeatures: JSVGStringList;
    requiredExtensions: JSVGStringList;
    systemLanguage: JSVGStringList;
    function hasExtension(extension: String): Boolean;
  end;

implementation

end.
