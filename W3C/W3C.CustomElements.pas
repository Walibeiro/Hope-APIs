unit W3C.CustomElements;

interface

type
  JElementDefinitionOptions = class external 'ElementDefinitionOptions'
  public
    extends: String;
  end;

  JCustomElementRegistry = class external 'CustomElementRegistry'
  public
    procedure define(&name: String; &constructor: procedure); overload; { CEReactions }
    procedure define(&name: String; &constructor: procedure; options: JElementDefinitionOptions); overload; { CEReactions }
    function get(&name: String): Variant;
    function whenDefined(&name: String): Boolean;
  end;

  JWindow = partial class external 'Window'
  public
    customElements: JCustomElementRegistry;
  end;