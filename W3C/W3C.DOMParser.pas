unit W3C.DOMParser;

interface

uses
  W3C.DOM4, W3C.HTML5;

type
  TSupportedType = String;
  TSupportedTypeHelper = strict helper for TSupportedType
    const TextHtml = 'text/html';
    const TextXml = 'text/xml';
    const ApplicationXml = 'application/xml';
    const ApplicationXHtml = 'application/xhtml+xml';
    const ImageSvgXml = 'image/svg+xml';
  end;

  JDOMParser = class external 'DOMParser'
    constructor Create;
    function parseFromString(str: String; &type: TSupportedType): JDocument;
  end;

  JXMLSerializer = class external 'XMLSerializer'
    constructor Create;
    function serializeToString(root: JNode): String;
  end;  