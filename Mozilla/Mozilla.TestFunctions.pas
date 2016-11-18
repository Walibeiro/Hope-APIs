unit Mozilla.TestFunctions;

interface

type
  // Pref=dom.expose_test_interfaces
  JTestFunctions = class external 'TestFunctions'
  public
    procedure throwUncatchableException; { Throws } 
  end;

implementation

end.
