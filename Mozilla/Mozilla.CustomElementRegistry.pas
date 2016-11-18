unit Mozilla.CustomElementRegistry;

interface

type
  // Func=CustomElementRegistry::IsCustomElementEnabled
  JCustomElementRegistry = class external 'CustomElementRegistry'
  public
    procedure define(&name: String; functionConstructor: JFunction); overload; { Throws } 
    procedure define(&name: String; functionConstructor: JFunction; options: JElementDefinitionOptions); overload; { Throws } 
    function get(&name: String): Variant;
    function whenDefined(&name: String): void; { Throws } 
  end;

  JElementDefinitionOptions = class external 'ElementDefinitionOptions'
  public
    extends: String;
  end;

implementation

end.
