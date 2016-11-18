unit Mozilla.GeometryUtils;

interface

type
  JCSSBoxType = (margin, border, padding, content);

  JBoxQuadOptions = class external 'BoxQuadOptions'
  public
    box: JCSSBoxType;
    relativeTo: TGeometryNode;
  end;

  JConvertCoordinateOptions = class external 'ConvertCoordinateOptions'
  public
    fromBox: JCSSBoxType;
    toBox: JCSSBoxType;
  end;

  // NoInterfaceObject
  JGeometryUtils = class external 'GeometryUtils'
  public
    function getBoxQuads: array of JDOMQuad; overload; { Throws,Func=nsINode::HasBoxQuadsSupport } 
    function getBoxQuads(options: JBoxQuadOptions): array of JDOMQuad; overload; { Throws,Func=nsINode::HasBoxQuadsSupport } 
    function convertQuadFromNode(quad: JDOMQuad; from: TGeometryNode): JDOMQuad; overload; { Throws,Pref=layout.css.convertFromNode.enabled } 
    function convertQuadFromNode(quad: JDOMQuad; from: TGeometryNode; options: JConvertCoordinateOptions): JDOMQuad; overload; { Throws,Pref=layout.css.convertFromNode.enabled } 
    function convertRectFromNode(rect: JDOMRectReadOnly; from: TGeometryNode): JDOMQuad; overload; { Throws,Pref=layout.css.convertFromNode.enabled } 
    function convertRectFromNode(rect: JDOMRectReadOnly; from: TGeometryNode; options: JConvertCoordinateOptions): JDOMQuad; overload; { Throws,Pref=layout.css.convertFromNode.enabled } 
    function convertPointFromNode(point: JDOMPointInit; from: TGeometryNode): JDOMPoint; overload; { Throws,Pref=layout.css.convertFromNode.enabled } 
    function convertPointFromNode(point: JDOMPointInit; from: TGeometryNode; options: JConvertCoordinateOptions): JDOMPoint; overload; { Throws,Pref=layout.css.convertFromNode.enabled } 
  end;

  TGeometryNode = Union;
implementation

end.
