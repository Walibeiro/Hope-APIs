unit W3C.ParsingAndSerialization;

interface

uses
  W3C.DOM4;

type
  JSupportedType = String;
  JSupportedTypeHelper = strict helper for JSupportedType
    const TextHtml = "text/html";
    const TextXml = "text/xml";
    const ApplicationXml = "application/xml";
    const ApplicationXHtml = "application/xhtml+xml";
    const ImageSVG = "image/svg+xml";
  end;

  JDOMParser = class external 'DOMParser'
  public
    constructor Create;
    function parseFromString(str: String; &type: JSupportedType): JDocument; { NewObject }
  end;

  JXMLSerializer = class external 'XMLSerializer'
  public
    constructor Create;
    function serializeToString(root: JNode): String;
  end;

  JElement = partial class external 'Element'
  public
    innerHTML: String; { CEReactions,TreatNullAs=EmptyString }
    outerHTML: String; { CEReactions,TreatNullAs=EmptyString }
    procedure insertAdjacentHTML(position: String; text: String); { CEReactions }
  end;

  JRange = partial class external 'Range'
  public
    function createContextualFragment(fragment: String): JDocumentFragment; { CEReactions,NewObject }
  end;