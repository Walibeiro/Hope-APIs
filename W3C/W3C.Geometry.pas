unit W3C.Geometry;

interface

uses
  ECMA.TypedArray;

type
  JDOMPointInit = class external 'DOMPointInit'
  public
    x, y, z, w: Float;
  end;

  // Exposed = (Window, Worker)
  JDOMPointReadOnly = partial class external 'DOMPointReadOnly'
  public
    x, y, z, w: Float;
    constructor Create(x, y, z, w: Float); overload;
  end;

  // Exposed = (Window, Worker)
  JDOMPoint = class external 'DOMPoint' (JDOMPointReadOnly)
  public
    constructor Create(x: Float = 0; y: Float = 0; z: Float = 0; w: Float = 1); overload;
    constructor Create(point: JDOMPointInit); overload;
  end;

  JDOMRectInit = class external 'DOMRectInit'
  public
    x, y, width, height: Float;
  end;

  // Exposed = (Window, Worker)
  JDOMRectReadOnly = class external 'DOMRectReadOnly'
  public
    x, y, width, height: Float;
    top, right, bottom, left: Float;
    constructor Create(x, y, width, height: Float); overload;
  end;

  // Exposed = (Window, Worker)
  JDOMRect = class external 'DOMRect' (JDOMRectReadOnly)
  public
    constructor Create(x: Float = 0; y: Float = 0; width: Float = 0; height: Float = 0); overload;
  end;

  // NoInterfaceObject, ArrayClass
  JDOMRectList = class external 'DOMRectList'
  public
    length: Integer;
    function item(&index: Integer): JDOMRect;
  end;

  JDOMQuadInit = class external 'DOMQuadInit'
    p1, p2, p3, p4: JDOMPointInit;
  end;

  // Exposed = (Window, Worker)
  JDOMQuad = class external 'DOMQuad'
  public
    constructor Create; overload;
    constructor Create(p1: JDOMPointInit); overload;
    constructor Create(p1, p2: JDOMPointInit); overload;
    constructor Create(p1, p2, p3: JDOMPointInit); overload;
    constructor Create(p1, p2, p3, p4: JDOMPointInit); overload;
    constructor Create(Rect: JDOMRectInit); overload;
    p1, p2, p3, p4: JDOMPoint; { SameObject }
    bounds: JDOMRectReadOnly; { SameObject }
  end;

  // Constructor( sequence < unrestricted double > numberSequence)
  // Exposed = (Window, Worker)
  JDOMMatrixReadOnly = partial class external 'DOMMatrixReadOnly'
  public
    a, b, c, d, e, f: Float;
    m11, m12, m13, m14: Float;
    m21, m22, m23, m24: Float;
    m31, m32, m33, m34: Float;
    m41, m42, m43, m44: Float;
    is2D: Boolean;
    isIdentity: Boolean;
  end;

  // Constructor,Constructor( DOMString transformList),
  // Constructor( DOMMatrixReadOnly other),Constructor( Float32Array array32),
  // Constructor( Float64Array array64),
  // Constructor( sequence < unrestricted double > numberSequence)
  // Exposed = (Window, Worker)
  JDOMMatrix = class external 'DOMMatrix' (JDOMMatrixReadOnly)
  public
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
    function setMatrixValue(transformList: String): JDOMMatrix;
  end;

  // Constructor( sequence < unrestricted double > numberSequence)
  // Exposed = (Window, Worker)
  JDOMMatrixReadOnly = partial class external 'DOMMatrixReadOnly'
  public
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
    function toFloat32Array: JFloat32Array;
    function toFloat64Array: JFloat64Array;
  end;

  JDOMPointReadOnly = partial class external 'DOMPointReadOnly'
  public
    function matrixTransform(matrix: JDOMMatrixReadOnly): JDOMPoint;
  end;