unit ECMA.&Object;

interface

type
  TEcmaObject = class external 'Object'
    class function seal(O: JObject): JObject;
    class function freeze(O: JObject): JObject;
    class function preventExtensions(O: JObject): JObject;
    class function isSealed(O: JObject): Boolean;
    class function isFrozen(O: JObject): Boolean;
    class function isExtensible(O: JObject): Boolean;
    class function keys(O: JObject): array of String;
    class function values(O: JObject): array of String;
    class function entries(O: JObject): array of array of Variant;
  end;