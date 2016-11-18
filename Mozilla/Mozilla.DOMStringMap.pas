unit Mozilla.DOMStringMap;

interface

type
  // OverrideBuiltins
  JDOMStringMap = class external 'DOMStringMap'
  public
    function (&name: String): String;
    procedure (&name: String; value: String); { Throws } 
    procedure (&name: String);
  end;

implementation

end.
