unit Mozilla.CSS;

interface

type
  JCSS = class external 'CSS'
  public
    function supports(&property: String; value: String): Boolean; { Throws } 
    function supports(conditionText: String): Boolean; { Throws } 
    function escape(ident: String): String;
  end;

implementation

end.
