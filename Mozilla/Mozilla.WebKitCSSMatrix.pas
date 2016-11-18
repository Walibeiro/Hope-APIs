unit Mozilla.WebKitCSSMatrix;

interface

type
  // Constructor,Constructor( DOMString transformList),Constructor( WebKitCSSMatrix other),Exposed=Window,Func=mozilla::dom::WebKitCSSMatrix::FeatureEnabled
  JWebKitCSSMatrix = class external 'WebKitCSSMatrix' (JDOMMatrix)
  public
    function setMatrixValue(transformList: String): JWebKitCSSMatrix; { Throws } 
    function multiply(other: JWebKitCSSMatrix): JWebKitCSSMatrix;
    function inverse: JWebKitCSSMatrix; { Throws } 
    function translate(tx: Float = 0; ty: Float = 0; tz: Float = 0): JWebKitCSSMatrix;
    function scale(scaleX: Float = 1; scaleZ: Float = 1): JWebKitCSSMatrix; overload;
    function scale(scaleX: Float = 1; scaleZ: Float = 1): JWebKitCSSMatrix; overload;
    function scale(scaleX: Float = 1; scaleY: Float; scaleZ: Float = 1): JWebKitCSSMatrix; overload;
    function rotate(rotX: Float = 0): JWebKitCSSMatrix; overload;
    function rotate(rotX: Float = 0): JWebKitCSSMatrix; overload;
    function rotate(rotX: Float = 0; rotY: Float): JWebKitCSSMatrix; overload;
    function rotate(rotX: Float = 0; rotY: Float; rotZ: Float): JWebKitCSSMatrix; overload;
    function rotateAxisAngle(x: Float = 0; y: Float = 0; z: Float = 0; angle: Float = 0): JWebKitCSSMatrix;
    function skewX(sx: Float = 0): JWebKitCSSMatrix;
    function skewY(sy: Float = 0): JWebKitCSSMatrix;
  end;

implementation

end.
