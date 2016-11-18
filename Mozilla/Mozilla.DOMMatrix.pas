unit Mozilla.DOMMatrix;

interface

type
  // Pref=layout.css.DOMMatrix.enabled
  JDOMMatrixReadOnly = class external 'DOMMatrixReadOnly'
  public
    a: Float;
    b: Float;
    c: Float;
    d: Float;
    e: Float;
    f: Float;
    m11: Float;
    m12: Float;
    m13: Float;
    m14: Float;
    m21: Float;
    m22: Float;
    m23: Float;
    m24: Float;
    m31: Float;
    m32: Float;
    m33: Float;
    m34: Float;
    m41: Float;
    m42: Float;
    m43: Float;
    m44: Float;
    is2D: Boolean;
    identity: Boolean;
    function translate(tx: Float; ty: Float; tz: Float = 0): JDOMMatrix;
    function scale(scale: Float; originX: Float = 0; originY: Float = 0): JDOMMatrix;
    function scale3d(scale: Float; originX: Float = 0; originY: Float = 0; originZ: Float = 0): JDOMMatrix;
    function scaleNonUniform(scaleX: Float; scaleY: Float = 1; scaleZ: Float = 1; originX: Float = 0; originY: Float = 0; originZ: Float = 0): JDOMMatrix;
    function rotate(angle: Float; originX: Float = 0; originY: Float = 0): JDOMMatrix;
    function rotateFromVector(x: Float; y: Float): JDOMMatrix;
    function rotateAxisAngle(x: Float; y: Float; z: Float; angle: Float): JDOMMatrix;
    function skewX(sx: Float): JDOMMatrix;
    function skewY(sy: Float): JDOMMatrix;
    function multiply(other: JDOMMatrix): JDOMMatrix;
    function flipX: JDOMMatrix;
    function flipY: JDOMMatrix;
    function inverse: JDOMMatrix;
    function transformPoint: JDOMPoint; overload;
    function transformPoint(point: JDOMPointInit): JDOMPoint; overload;
    function toFloat32Array: JFloat32Array; { Throws } 
    function toFloat64Array: JFloat64Array; { Throws } 
  end;

  // Pref=layout.css.DOMMatrix.enabled,Constructor,Constructor( DOMString transformList),Constructor( DOMMatrixReadOnly other),Constructor( Float32Array array32),Constructor( Float64Array array64),Constructor( sequence < unrestricted double > numberSequence)
  JDOMMatrix = class external 'DOMMatrix' (JDOMMatrixReadOnly)
  public
    a: Float;
    b: Float;
    c: Float;
    d: Float;
    e: Float;
    f: Float;
    m11: Float;
    m12: Float;
    m13: Float;
    m14: Float;
    m21: Float;
    m22: Float;
    m23: Float;
    m24: Float;
    m31: Float;
    m32: Float;
    m33: Float;
    m34: Float;
    m41: Float;
    m42: Float;
    m43: Float;
    m44: Float;
    function multiplySelf(other: JDOMMatrix): JDOMMatrix;
    function preMultiplySelf(other: JDOMMatrix): JDOMMatrix;
    function translateSelf(tx: Float; ty: Float; tz: Float = 0): JDOMMatrix;
    function scaleSelf(scale: Float; originX: Float = 0; originY: Float = 0): JDOMMatrix;
    function scale3dSelf(scale: Float; originX: Float = 0; originY: Float = 0; originZ: Float = 0): JDOMMatrix;
    function scaleNonUniformSelf(scaleX: Float; scaleY: Float = 1; scaleZ: Float = 1; originX: Float = 0; originY: Float = 0; originZ: Float = 0): JDOMMatrix;
    function rotateSelf(angle: Float; originX: Float = 0; originY: Float = 0): JDOMMatrix;
    function rotateFromVectorSelf(x: Float; y: Float): JDOMMatrix;
    function rotateAxisAngleSelf(x: Float; y: Float; z: Float; angle: Float): JDOMMatrix;
    function skewXSelf(sx: Float): JDOMMatrix;
    function skewYSelf(sy: Float): JDOMMatrix;
    function invertSelf: JDOMMatrix;
    function setMatrixValue(transformList: String): JDOMMatrix; { Throws } 
  end;

implementation

end.
