unit Mozilla.WebGLRenderingContext;

interface

type
  TGLenum = Integer;
  TGLboolean = Boolean;
  TGLbitfield = Integer;
  TGLbyte = Integer;
  TGLshort = Integer;
  TGLint = Integer;
  TGLsizei = Integer;
  TGLintptr = Integer;
  TGLsizeiptr = Integer;
  TGLubyte = Integer;
  TGLushort = Integer;
  TGLuint = Integer;
  TGLfloat = Float;
  TGLclampf = Float;
  TGLuint64EXT = Integer;
  JWebGLContextAttributes = class external 'WebGLContextAttributes'
  public
    alpha: Boolean;
    depth: Boolean;
    stencil: Boolean;
    antialias: Boolean;
    premultipliedAlpha: Boolean;
    preserveDrawingBuffer: Boolean;
    failIfMajorPerformanceCaveat: Boolean;
  end;

  // Exposed=( Window , Worker),Func=mozilla::dom::OffscreenCanvas::PrefEnabledOnWorkerThread
  JWebGLBuffer = class external 'WebGLBuffer'
  end;

  // Exposed=( Window , Worker),Func=mozilla::dom::OffscreenCanvas::PrefEnabledOnWorkerThread
  JWebGLFramebuffer = class external 'WebGLFramebuffer'
  end;

  // Exposed=( Window , Worker),Func=mozilla::dom::OffscreenCanvas::PrefEnabledOnWorkerThread
  JWebGLProgram = class external 'WebGLProgram'
  end;

  // Exposed=( Window , Worker),Func=mozilla::dom::OffscreenCanvas::PrefEnabledOnWorkerThread
  JWebGLRenderbuffer = class external 'WebGLRenderbuffer'
  end;

  // Exposed=( Window , Worker),Func=mozilla::dom::OffscreenCanvas::PrefEnabledOnWorkerThread
  JWebGLShader = class external 'WebGLShader'
  end;

  // Exposed=( Window , Worker),Func=mozilla::dom::OffscreenCanvas::PrefEnabledOnWorkerThread
  JWebGLTexture = class external 'WebGLTexture'
  end;

  // Exposed=( Window , Worker),Func=mozilla::dom::OffscreenCanvas::PrefEnabledOnWorkerThread
  JWebGLUniformLocation = class external 'WebGLUniformLocation'
  end;

  // NoInterfaceObject
  JWebGLVertexArrayObjectOES = class external 'WebGLVertexArrayObjectOES'
  end;

  // Exposed=( Window , Worker),Func=mozilla::dom::OffscreenCanvas::PrefEnabledOnWorkerThread
  JWebGLActiveInfo = class external 'WebGLActiveInfo'
  public
    size: TGLint;
    type: TGLenum;
    name: String;
  end;

  // Exposed=( Window , Worker),Func=mozilla::dom::OffscreenCanvas::PrefEnabledOnWorkerThread
  JWebGLShaderPrecisionFormat = class external 'WebGLShaderPrecisionFormat'
  public
    rangeMin: TGLint;
    rangeMax: TGLint;
    precision: TGLint;
  end;

  TFloat32List = Union;
  TInt32List = Union;
  // Exposed=( Window , Worker),Func=mozilla::dom::OffscreenCanvas::PrefEnabledOnWorkerThread
  JWebGLRenderingContext = class external 'WebGLRenderingContext'
  const 
    DEPTH_BUFFER_BIT: TGLenum = 256;
    STENCIL_BUFFER_BIT: TGLenum = 1024;
    COLOR_BUFFER_BIT: TGLenum = 16384;
    POINTS: TGLenum = 0;
    LINES: TGLenum = 1;
    LINE_LOOP: TGLenum = 2;
    LINE_STRIP: TGLenum = 3;
    TRIANGLES: TGLenum = 4;
    TRIANGLE_STRIP: TGLenum = 5;
    TRIANGLE_FAN: TGLenum = 6;
    ZERO: TGLenum = 0;
    ONE: TGLenum = 1;
    SRC_COLOR: TGLenum = 768;
    ONE_MINUS_SRC_COLOR: TGLenum = 769;
    SRC_ALPHA: TGLenum = 770;
    ONE_MINUS_SRC_ALPHA: TGLenum = 771;
    DST_ALPHA: TGLenum = 772;
    ONE_MINUS_DST_ALPHA: TGLenum = 773;
    DST_COLOR: TGLenum = 774;
    ONE_MINUS_DST_COLOR: TGLenum = 775;
    SRC_ALPHA_SATURATE: TGLenum = 776;
    FUNC_ADD: TGLenum = 32774;
    BLEND_EQUATION: TGLenum = 32777;
    BLEND_EQUATION_RGB: TGLenum = 32777;
    BLEND_EQUATION_ALPHA: TGLenum = 34877;
    FUNC_SUBTRACT: TGLenum = 32778;
    FUNC_REVERSE_SUBTRACT: TGLenum = 32779;
    BLEND_DST_RGB: TGLenum = 32968;
    BLEND_SRC_RGB: TGLenum = 32969;
    BLEND_DST_ALPHA: TGLenum = 32970;
    BLEND_SRC_ALPHA: TGLenum = 32971;
    CONSTANT_COLOR: TGLenum = 32769;
    ONE_MINUS_CONSTANT_COLOR: TGLenum = 32770;
    CONSTANT_ALPHA: TGLenum = 32771;
    ONE_MINUS_CONSTANT_ALPHA: TGLenum = 32772;
    BLEND_COLOR: TGLenum = 32773;
    ARRAY_BUFFER: TGLenum = 34962;
    ELEMENT_ARRAY_BUFFER: TGLenum = 34963;
    ARRAY_BUFFER_BINDING: TGLenum = 34964;
    ELEMENT_ARRAY_BUFFER_BINDING: TGLenum = 34965;
    STREAM_DRAW: TGLenum = 35040;
    STATIC_DRAW: TGLenum = 35044;
    DYNAMIC_DRAW: TGLenum = 35048;
    BUFFER_SIZE: TGLenum = 34660;
    BUFFER_USAGE: TGLenum = 34661;
    CURRENT_VERTEX_ATTRIB: TGLenum = 34342;
    FRONT: TGLenum = 1028;
    BACK: TGLenum = 1029;
    FRONT_AND_BACK: TGLenum = 1032;
    CULL_FACE: TGLenum = 2884;
    BLEND: TGLenum = 3042;
    DITHER: TGLenum = 3024;
    STENCIL_TEST: TGLenum = 2960;
    DEPTH_TEST: TGLenum = 2929;
    SCISSOR_TEST: TGLenum = 3089;
    POLYGON_OFFSET_FILL: TGLenum = 32823;
    SAMPLE_ALPHA_TO_COVERAGE: TGLenum = 32926;
    SAMPLE_COVERAGE: TGLenum = 32928;
    NO_ERROR: TGLenum = 0;
    INVALID_ENUM: TGLenum = 1280;
    INVALID_VALUE: TGLenum = 1281;
    INVALID_OPERATION: TGLenum = 1282;
    OUT_OF_MEMORY: TGLenum = 1285;
    CW: TGLenum = 2304;
    CCW: TGLenum = 2305;
    LINE_WIDTH: TGLenum = 2849;
    ALIASED_POINT_SIZE_RANGE: TGLenum = 33901;
    ALIASED_LINE_WIDTH_RANGE: TGLenum = 33902;
    CULL_FACE_MODE: TGLenum = 2885;
    FRONT_FACE: TGLenum = 2886;
    DEPTH_RANGE: TGLenum = 2928;
    DEPTH_WRITEMASK: TGLenum = 2930;
    DEPTH_CLEAR_VALUE: TGLenum = 2931;
    DEPTH_FUNC: TGLenum = 2932;
    STENCIL_CLEAR_VALUE: TGLenum = 2961;
    STENCIL_FUNC: TGLenum = 2962;
    STENCIL_FAIL: TGLenum = 2964;
    STENCIL_PASS_DEPTH_FAIL: TGLenum = 2965;
    STENCIL_PASS_DEPTH_PASS: TGLenum = 2966;
    STENCIL_REF: TGLenum = 2967;
    STENCIL_VALUE_MASK: TGLenum = 2963;
    STENCIL_WRITEMASK: TGLenum = 2968;
    STENCIL_BACK_FUNC: TGLenum = 34816;
    STENCIL_BACK_FAIL: TGLenum = 34817;
    STENCIL_BACK_PASS_DEPTH_FAIL: TGLenum = 34818;
    STENCIL_BACK_PASS_DEPTH_PASS: TGLenum = 34819;
    STENCIL_BACK_REF: TGLenum = 36003;
    STENCIL_BACK_VALUE_MASK: TGLenum = 36004;
    STENCIL_BACK_WRITEMASK: TGLenum = 36005;
    VIEWPORT: TGLenum = 2978;
    SCISSOR_BOX: TGLenum = 3088;
    COLOR_CLEAR_VALUE: TGLenum = 3106;
    COLOR_WRITEMASK: TGLenum = 3107;
    UNPACK_ALIGNMENT: TGLenum = 3317;
    PACK_ALIGNMENT: TGLenum = 3333;
    MAX_TEXTURE_SIZE: TGLenum = 3379;
    MAX_VIEWPORT_DIMS: TGLenum = 3386;
    SUBPIXEL_BITS: TGLenum = 3408;
    RED_BITS: TGLenum = 3410;
    GREEN_BITS: TGLenum = 3411;
    BLUE_BITS: TGLenum = 3412;
    ALPHA_BITS: TGLenum = 3413;
    DEPTH_BITS: TGLenum = 3414;
    STENCIL_BITS: TGLenum = 3415;
    POLYGON_OFFSET_UNITS: TGLenum = 10752;
    POLYGON_OFFSET_FACTOR: TGLenum = 32824;
    TEXTURE_BINDING_2D: TGLenum = 32873;
    SAMPLE_BUFFERS: TGLenum = 32936;
    SAMPLES: TGLenum = 32937;
    SAMPLE_COVERAGE_VALUE: TGLenum = 32938;
    SAMPLE_COVERAGE_INVERT: TGLenum = 32939;
    COMPRESSED_TEXTURE_FORMATS: TGLenum = 34467;
    DONT_CARE: TGLenum = 4352;
    FASTEST: TGLenum = 4353;
    NICEST: TGLenum = 4354;
    GENERATE_MIPMAP_HINT: TGLenum = 33170;
    BYTE: TGLenum = 5120;
    UNSIGNED_BYTE: TGLenum = 5121;
    SHORT: TGLenum = 5122;
    UNSIGNED_SHORT: TGLenum = 5123;
    INT: TGLenum = 5124;
    UNSIGNED_INT: TGLenum = 5125;
    FLOAT: TGLenum = 5126;
    DEPTH_COMPONENT: TGLenum = 6402;
    ALPHA: TGLenum = 6406;
    RGB: TGLenum = 6407;
    RGBA: TGLenum = 6408;
    LUMINANCE: TGLenum = 6409;
    LUMINANCE_ALPHA: TGLenum = 6410;
    UNSIGNED_SHORT_4_4_4_4: TGLenum = 32819;
    UNSIGNED_SHORT_5_5_5_1: TGLenum = 32820;
    UNSIGNED_SHORT_5_6_5: TGLenum = 33635;
    FRAGMENT_SHADER: TGLenum = 35632;
    VERTEX_SHADER: TGLenum = 35633;
    MAX_VERTEX_ATTRIBS: TGLenum = 34921;
    MAX_VERTEX_UNIFORM_VECTORS: TGLenum = 36347;
    MAX_VARYING_VECTORS: TGLenum = 36348;
    MAX_COMBINED_TEXTURE_IMAGE_UNITS: TGLenum = 35661;
    MAX_VERTEX_TEXTURE_IMAGE_UNITS: TGLenum = 35660;
    MAX_TEXTURE_IMAGE_UNITS: TGLenum = 34930;
    MAX_FRAGMENT_UNIFORM_VECTORS: TGLenum = 36349;
    SHADER_TYPE: TGLenum = 35663;
    DELETE_STATUS: TGLenum = 35712;
    LINK_STATUS: TGLenum = 35714;
    VALIDATE_STATUS: TGLenum = 35715;
    ATTACHED_SHADERS: TGLenum = 35717;
    ACTIVE_UNIFORMS: TGLenum = 35718;
    ACTIVE_ATTRIBUTES: TGLenum = 35721;
    SHADING_LANGUAGE_VERSION: TGLenum = 35724;
    CURRENT_PROGRAM: TGLenum = 35725;
    NEVER: TGLenum = 512;
    LESS: TGLenum = 513;
    EQUAL: TGLenum = 514;
    LEQUAL: TGLenum = 515;
    GREATER: TGLenum = 516;
    NOTEQUAL: TGLenum = 517;
    GEQUAL: TGLenum = 518;
    ALWAYS: TGLenum = 519;
    KEEP: TGLenum = 7680;
    REPLACE: TGLenum = 7681;
    INCR: TGLenum = 7682;
    DECR: TGLenum = 7683;
    INVERT: TGLenum = 5386;
    INCR_WRAP: TGLenum = 34055;
    DECR_WRAP: TGLenum = 34056;
    VENDOR: TGLenum = 7936;
    RENDERER: TGLenum = 7937;
    VERSION: TGLenum = 7938;
    NEAREST: TGLenum = 9728;
    LINEAR: TGLenum = 9729;
    NEAREST_MIPMAP_NEAREST: TGLenum = 9984;
    LINEAR_MIPMAP_NEAREST: TGLenum = 9985;
    NEAREST_MIPMAP_LINEAR: TGLenum = 9986;
    LINEAR_MIPMAP_LINEAR: TGLenum = 9987;
    TEXTURE_MAG_FILTER: TGLenum = 10240;
    TEXTURE_MIN_FILTER: TGLenum = 10241;
    TEXTURE_WRAP_S: TGLenum = 10242;
    TEXTURE_WRAP_T: TGLenum = 10243;
    TEXTURE_2D: TGLenum = 3553;
    TEXTURE: TGLenum = 5890;
    TEXTURE_CUBE_MAP: TGLenum = 34067;
    TEXTURE_BINDING_CUBE_MAP: TGLenum = 34068;
    TEXTURE_CUBE_MAP_POSITIVE_X: TGLenum = 34069;
    TEXTURE_CUBE_MAP_NEGATIVE_X: TGLenum = 34070;
    TEXTURE_CUBE_MAP_POSITIVE_Y: TGLenum = 34071;
    TEXTURE_CUBE_MAP_NEGATIVE_Y: TGLenum = 34072;
    TEXTURE_CUBE_MAP_POSITIVE_Z: TGLenum = 34073;
    TEXTURE_CUBE_MAP_NEGATIVE_Z: TGLenum = 34074;
    MAX_CUBE_MAP_TEXTURE_SIZE: TGLenum = 34076;
    TEXTURE0: TGLenum = 33984;
    TEXTURE1: TGLenum = 33985;
    TEXTURE2: TGLenum = 33986;
    TEXTURE3: TGLenum = 33987;
    TEXTURE4: TGLenum = 33988;
    TEXTURE5: TGLenum = 33989;
    TEXTURE6: TGLenum = 33990;
    TEXTURE7: TGLenum = 33991;
    TEXTURE8: TGLenum = 33992;
    TEXTURE9: TGLenum = 33993;
    TEXTURE10: TGLenum = 33994;
    TEXTURE11: TGLenum = 33995;
    TEXTURE12: TGLenum = 33996;
    TEXTURE13: TGLenum = 33997;
    TEXTURE14: TGLenum = 33998;
    TEXTURE15: TGLenum = 33999;
    TEXTURE16: TGLenum = 34000;
    TEXTURE17: TGLenum = 34001;
    TEXTURE18: TGLenum = 34002;
    TEXTURE19: TGLenum = 34003;
    TEXTURE20: TGLenum = 34004;
    TEXTURE21: TGLenum = 34005;
    TEXTURE22: TGLenum = 34006;
    TEXTURE23: TGLenum = 34007;
    TEXTURE24: TGLenum = 34008;
    TEXTURE25: TGLenum = 34009;
    TEXTURE26: TGLenum = 34010;
    TEXTURE27: TGLenum = 34011;
    TEXTURE28: TGLenum = 34012;
    TEXTURE29: TGLenum = 34013;
    TEXTURE30: TGLenum = 34014;
    TEXTURE31: TGLenum = 34015;
    ACTIVE_TEXTURE: TGLenum = 34016;
    &REPEAT: TGLenum = 10497;
    CLAMP_TO_EDGE: TGLenum = 33071;
    MIRRORED_REPEAT: TGLenum = 33648;
    FLOAT_VEC2: TGLenum = 35664;
    FLOAT_VEC3: TGLenum = 35665;
    FLOAT_VEC4: TGLenum = 35666;
    INT_VEC2: TGLenum = 35667;
    INT_VEC3: TGLenum = 35668;
    INT_VEC4: TGLenum = 35669;
    BOOL: TGLenum = 35670;
    BOOL_VEC2: TGLenum = 35671;
    BOOL_VEC3: TGLenum = 35672;
    BOOL_VEC4: TGLenum = 35673;
    FLOAT_MAT2: TGLenum = 35674;
    FLOAT_MAT3: TGLenum = 35675;
    FLOAT_MAT4: TGLenum = 35676;
    SAMPLER_2D: TGLenum = 35678;
    SAMPLER_CUBE: TGLenum = 35680;
    VERTEX_ATTRIB_ARRAY_ENABLED: TGLenum = 34338;
    VERTEX_ATTRIB_ARRAY_SIZE: TGLenum = 34339;
    VERTEX_ATTRIB_ARRAY_STRIDE: TGLenum = 34340;
    VERTEX_ATTRIB_ARRAY_TYPE: TGLenum = 34341;
    VERTEX_ATTRIB_ARRAY_NORMALIZED: TGLenum = 34922;
    VERTEX_ATTRIB_ARRAY_POINTER: TGLenum = 34373;
    VERTEX_ATTRIB_ARRAY_BUFFER_BINDING: TGLenum = 34975;
    IMPLEMENTATION_COLOR_READ_TYPE: TGLenum = 35738;
    IMPLEMENTATION_COLOR_READ_FORMAT: TGLenum = 35739;
    COMPILE_STATUS: TGLenum = 35713;
    LOW_FLOAT: TGLenum = 36336;
    MEDIUM_FLOAT: TGLenum = 36337;
    HIGH_FLOAT: TGLenum = 36338;
    LOW_INT: TGLenum = 36339;
    MEDIUM_INT: TGLenum = 36340;
    HIGH_INT: TGLenum = 36341;
    FRAMEBUFFER: TGLenum = 36160;
    RENDERBUFFER: TGLenum = 36161;
    RGBA4: TGLenum = 32854;
    RGB5_A1: TGLenum = 32855;
    RGB565: TGLenum = 36194;
    DEPTH_COMPONENT16: TGLenum = 33189;
    STENCIL_INDEX: TGLenum = 6401;
    STENCIL_INDEX8: TGLenum = 36168;
    DEPTH_STENCIL: TGLenum = 34041;
    RENDERBUFFER_WIDTH: TGLenum = 36162;
    RENDERBUFFER_HEIGHT: TGLenum = 36163;
    RENDERBUFFER_INTERNAL_FORMAT: TGLenum = 36164;
    RENDERBUFFER_RED_SIZE: TGLenum = 36176;
    RENDERBUFFER_GREEN_SIZE: TGLenum = 36177;
    RENDERBUFFER_BLUE_SIZE: TGLenum = 36178;
    RENDERBUFFER_ALPHA_SIZE: TGLenum = 36179;
    RENDERBUFFER_DEPTH_SIZE: TGLenum = 36180;
    RENDERBUFFER_STENCIL_SIZE: TGLenum = 36181;
    FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE: TGLenum = 36048;
    FRAMEBUFFER_ATTACHMENT_OBJECT_NAME: TGLenum = 36049;
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL: TGLenum = 36050;
    FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE: TGLenum = 36051;
    COLOR_ATTACHMENT0: TGLenum = 36064;
    DEPTH_ATTACHMENT: TGLenum = 36096;
    STENCIL_ATTACHMENT: TGLenum = 36128;
    DEPTH_STENCIL_ATTACHMENT: TGLenum = 33306;
    NONE: TGLenum = 0;
    FRAMEBUFFER_COMPLETE: TGLenum = 36053;
    FRAMEBUFFER_INCOMPLETE_ATTACHMENT: TGLenum = 36054;
    FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT: TGLenum = 36055;
    FRAMEBUFFER_INCOMPLETE_DIMENSIONS: TGLenum = 36057;
    FRAMEBUFFER_UNSUPPORTED: TGLenum = 36061;
    FRAMEBUFFER_BINDING: TGLenum = 36006;
    RENDERBUFFER_BINDING: TGLenum = 36007;
    MAX_RENDERBUFFER_SIZE: TGLenum = 34024;
    INVALID_FRAMEBUFFER_OPERATION: TGLenum = 1286;
    UNPACK_FLIP_Y_WEBGL: TGLenum = 37440;
    UNPACK_PREMULTIPLY_ALPHA_WEBGL: TGLenum = 37441;
    CONTEXT_LOST_WEBGL: TGLenum = 37442;
    UNPACK_COLORSPACE_CONVERSION_WEBGL: TGLenum = 37443;
    BROWSER_DEFAULT_WEBGL: TGLenum = 37444;
  public
    canvas: Union;
    drawingBufferWidth: TGLsizei;
    drawingBufferHeight: TGLsizei;
    function getContextAttributes: JWebGLContextAttributes; { WebGLHandlesContextLoss } 
    function isContextLost: Boolean; { WebGLHandlesContextLoss } 
    function getSupportedExtensions: array of String;
    function getExtension(&name: String): Variant; { Throws } 
    procedure activeTexture(texture: TGLenum);
    procedure attachShader(&program: JWebGLProgram; shader: JWebGLShader);
    procedure bindAttribLocation(&program: JWebGLProgram; &index: TGLuint; &name: String);
    procedure bindBuffer(target: TGLenum; buffer: JWebGLBuffer);
    procedure bindFramebuffer(target: TGLenum; framebuffer: JWebGLFramebuffer);
    procedure bindRenderbuffer(target: TGLenum; renderbuffer: JWebGLRenderbuffer);
    procedure bindTexture(target: TGLenum; texture: JWebGLTexture);
    procedure blendColor(red: TGLfloat; green: TGLfloat; blue: TGLfloat; alpha: TGLfloat);
    procedure blendEquation(mode: TGLenum);
    procedure blendEquationSeparate(modeRGB: TGLenum; modeAlpha: TGLenum);
    procedure blendFunc(sfactor: TGLenum; dfactor: TGLenum);
    procedure blendFuncSeparate(srcRGB: TGLenum; dstRGB: TGLenum; srcAlpha: TGLenum; dstAlpha: TGLenum);
    procedure bufferData(target: TGLenum; size: TGLsizeiptr; usage: TGLenum);
    procedure bufferData(target: TGLenum; data: JArrayBufferView; usage: TGLenum);
    procedure bufferData(target: TGLenum; data: JArrayBuffer; usage: TGLenum);
    procedure bufferData(target: TGLenum; data: JSharedArrayBuffer; usage: TGLenum);
    procedure bufferSubData(target: TGLenum; offset: TGLintptr; data: JArrayBufferView);
    procedure bufferSubData(target: TGLenum; offset: TGLintptr; data: JArrayBuffer);
    procedure bufferSubData(target: TGLenum; offset: TGLintptr; data: JSharedArrayBuffer);
    function checkFramebufferStatus(target: TGLenum): TGLenum; { WebGLHandlesContextLoss } 
    procedure clear(mask: TGLbitfield);
    procedure clearColor(red: TGLfloat; green: TGLfloat; blue: TGLfloat; alpha: TGLfloat);
    procedure clearDepth(depth: TGLclampf);
    procedure clearStencil(s: TGLint);
    procedure colorMask(red: TGLboolean; green: TGLboolean; blue: TGLboolean; alpha: TGLboolean);
    procedure compileShader(shader: JWebGLShader);
    procedure compressedTexImage2D(target: TGLenum; level: TGLint; internalformat: TGLenum; width: TGLsizei; height: TGLsizei; border: TGLint; data: JArrayBufferView);
    procedure compressedTexSubImage2D(target: TGLenum; level: TGLint; xoffset: TGLint; yoffset: TGLint; width: TGLsizei; height: TGLsizei; format: TGLenum; data: JArrayBufferView);
    procedure copyTexImage2D(target: TGLenum; level: TGLint; internalformat: TGLenum; x: TGLint; y: TGLint; width: TGLsizei; height: TGLsizei; border: TGLint);
    procedure copyTexSubImage2D(target: TGLenum; level: TGLint; xoffset: TGLint; yoffset: TGLint; x: TGLint; y: TGLint; width: TGLsizei; height: TGLsizei);
    function createBuffer: JWebGLBuffer;
    function createFramebuffer: JWebGLFramebuffer;
    function createProgram: JWebGLProgram;
    function createRenderbuffer: JWebGLRenderbuffer;
    function createShader(&type: TGLenum): JWebGLShader;
    function createTexture: JWebGLTexture;
    procedure cullFace(mode: TGLenum);
    procedure deleteBuffer(buffer: JWebGLBuffer);
    procedure deleteFramebuffer(framebuffer: JWebGLFramebuffer);
    procedure deleteProgram(&program: JWebGLProgram);
    procedure deleteRenderbuffer(renderbuffer: JWebGLRenderbuffer);
    procedure deleteShader(shader: JWebGLShader);
    procedure deleteTexture(texture: JWebGLTexture);
    procedure depthFunc(func: TGLenum);
    procedure depthMask(flag: TGLboolean);
    procedure depthRange(zNear: TGLclampf; zFar: TGLclampf);
    procedure detachShader(&program: JWebGLProgram; shader: JWebGLShader);
    procedure disable(cap: TGLenum);
    procedure disableVertexAttribArray(&index: TGLuint);
    procedure drawArrays(mode: TGLenum; first: TGLint; count: TGLsizei);
    procedure drawElements(mode: TGLenum; count: TGLsizei; &type: TGLenum; offset: TGLintptr);
    procedure enable(cap: TGLenum);
    procedure enableVertexAttribArray(&index: TGLuint);
    procedure finish;
    procedure flush;
    procedure framebufferRenderbuffer(target: TGLenum; attachment: TGLenum; renderbuffertarget: TGLenum; renderbuffer: JWebGLRenderbuffer);
    procedure framebufferTexture2D(target: TGLenum; attachment: TGLenum; textarget: TGLenum; texture: JWebGLTexture; level: TGLint);
    procedure frontFace(mode: TGLenum);
    procedure generateMipmap(target: TGLenum);
    function getActiveAttrib(&program: JWebGLProgram; &index: TGLuint): JWebGLActiveInfo; { NewObject } 
    function getActiveUniform(&program: JWebGLProgram; &index: TGLuint): JWebGLActiveInfo; { NewObject } 
    function getAttachedShaders(&program: JWebGLProgram): array of JWebGLShader;
    function getAttribLocation(&program: JWebGLProgram; &name: String): TGLint; { WebGLHandlesContextLoss } 
    function getBufferParameter(target: TGLenum; pname: TGLenum): Variant;
    function getParameter(pname: TGLenum): Variant; { Throws } 
    function getError: TGLenum; { WebGLHandlesContextLoss } 
    function getFramebufferAttachmentParameter(target: TGLenum; attachment: TGLenum; pname: TGLenum): Variant; { Throws } 
    function getProgramParameter(&program: JWebGLProgram; pname: TGLenum): Variant;
    function getProgramInfoLog(&program: JWebGLProgram): String;
    function getRenderbufferParameter(target: TGLenum; pname: TGLenum): Variant;
    function getShaderParameter(shader: JWebGLShader; pname: TGLenum): Variant;
    function getShaderPrecisionFormat(shadertype: TGLenum; precisiontype: TGLenum): JWebGLShaderPrecisionFormat; { NewObject } 
    function getShaderInfoLog(shader: JWebGLShader): String;
    function getShaderSource(shader: JWebGLShader): String;
    function getTexParameter(target: TGLenum; pname: TGLenum): Variant;
    function getUniform(&program: JWebGLProgram; location: JWebGLUniformLocation): Variant;
    function getUniformLocation(&program: JWebGLProgram; &name: String): JWebGLUniformLocation; { NewObject } 
    function getVertexAttrib(&index: TGLuint; pname: TGLenum): Variant; { Throws } 
    function getVertexAttribOffset(&index: TGLuint; pname: TGLenum): TGLsizeiptr; { WebGLHandlesContextLoss } 
    procedure hint(target: TGLenum; mode: TGLenum);
    function isBuffer(buffer: JWebGLBuffer): TGLboolean; { WebGLHandlesContextLoss } 
    function isEnabled(cap: TGLenum): TGLboolean; { WebGLHandlesContextLoss } 
    function isFramebuffer(framebuffer: JWebGLFramebuffer): TGLboolean; { WebGLHandlesContextLoss } 
    function isProgram(&program: JWebGLProgram): TGLboolean; { WebGLHandlesContextLoss } 
    function isRenderbuffer(renderbuffer: JWebGLRenderbuffer): TGLboolean; { WebGLHandlesContextLoss } 
    function isShader(shader: JWebGLShader): TGLboolean; { WebGLHandlesContextLoss } 
    function isTexture(texture: JWebGLTexture): TGLboolean; { WebGLHandlesContextLoss } 
    procedure lineWidth(width: TGLfloat);
    procedure linkProgram(&program: JWebGLProgram);
    procedure pixelStorei(pname: TGLenum; param: TGLint);
    procedure polygonOffset(factor: TGLfloat; units: TGLfloat);
    procedure readPixels(x: TGLint; y: TGLint; width: TGLsizei; height: TGLsizei; format: TGLenum; &type: TGLenum; pixels: JArrayBufferView); { Throws } 
    procedure renderbufferStorage(target: TGLenum; internalformat: TGLenum; width: TGLsizei; height: TGLsizei);
    procedure sampleCoverage(value: TGLclampf; invert: TGLboolean);
    procedure scissor(x: TGLint; y: TGLint; width: TGLsizei; height: TGLsizei);
    procedure shaderSource(shader: JWebGLShader; source: String);
    procedure stencilFunc(func: TGLenum; ref: TGLint; mask: TGLuint);
    procedure stencilFuncSeparate(face: TGLenum; func: TGLenum; ref: TGLint; mask: TGLuint);
    procedure stencilMask(mask: TGLuint);
    procedure stencilMaskSeparate(face: TGLenum; mask: TGLuint);
    procedure stencilOp(fail: TGLenum; zfail: TGLenum; zpass: TGLenum);
    procedure stencilOpSeparate(face: TGLenum; fail: TGLenum; zfail: TGLenum; zpass: TGLenum);
    procedure texImage2D(target: TGLenum; level: TGLint; internalformat: TGLenum; width: TGLsizei; height: TGLsizei; border: TGLint; format: TGLenum; &type: TGLenum; pixels: JArrayBufferView); { Throws } 
    procedure texImage2D(target: TGLenum; level: TGLint; internalformat: TGLenum; format: TGLenum; &type: TGLenum; pixels: JImageData); { Throws } 
    procedure texImage2D(target: TGLenum; level: TGLint; internalformat: TGLenum; format: TGLenum; &type: TGLenum; image: JHTMLImageElement); { Throws } 
    procedure texImage2D(target: TGLenum; level: TGLint; internalformat: TGLenum; format: TGLenum; &type: TGLenum; canvas: JHTMLCanvasElement); { Throws } 
    procedure texImage2D(target: TGLenum; level: TGLint; internalformat: TGLenum; format: TGLenum; &type: TGLenum; video: JHTMLVideoElement); { Throws } 
    procedure texParameterf(target: TGLenum; pname: TGLenum; param: TGLfloat);
    procedure texParameteri(target: TGLenum; pname: TGLenum; param: TGLint);
    procedure texSubImage2D(target: TGLenum; level: TGLint; xoffset: TGLint; yoffset: TGLint; width: TGLsizei; height: TGLsizei; format: TGLenum; &type: TGLenum; pixels: JArrayBufferView); { Throws } 
    procedure texSubImage2D(target: TGLenum; level: TGLint; xoffset: TGLint; yoffset: TGLint; format: TGLenum; &type: TGLenum; pixels: JImageData); { Throws } 
    procedure texSubImage2D(target: TGLenum; level: TGLint; xoffset: TGLint; yoffset: TGLint; format: TGLenum; &type: TGLenum; image: JHTMLImageElement); { Throws } 
    procedure texSubImage2D(target: TGLenum; level: TGLint; xoffset: TGLint; yoffset: TGLint; format: TGLenum; &type: TGLenum; canvas: JHTMLCanvasElement); { Throws } 
    procedure texSubImage2D(target: TGLenum; level: TGLint; xoffset: TGLint; yoffset: TGLint; format: TGLenum; &type: TGLenum; video: JHTMLVideoElement); { Throws } 
    procedure uniform1f(location: JWebGLUniformLocation; x: TGLfloat);
    procedure uniform2f(location: JWebGLUniformLocation; x: TGLfloat; y: TGLfloat);
    procedure uniform3f(location: JWebGLUniformLocation; x: TGLfloat; y: TGLfloat; z: TGLfloat);
    procedure uniform4f(location: JWebGLUniformLocation; x: TGLfloat; y: TGLfloat; z: TGLfloat; w: TGLfloat);
    procedure uniform1i(location: JWebGLUniformLocation; x: TGLint);
    procedure uniform2i(location: JWebGLUniformLocation; x: TGLint; y: TGLint);
    procedure uniform3i(location: JWebGLUniformLocation; x: TGLint; y: TGLint; z: TGLint);
    procedure uniform4i(location: JWebGLUniformLocation; x: TGLint; y: TGLint; z: TGLint; w: TGLint);
    procedure uniform1fv(location: JWebGLUniformLocation; data: TFloat32List);
    procedure uniform2fv(location: JWebGLUniformLocation; data: TFloat32List);
    procedure uniform3fv(location: JWebGLUniformLocation; data: TFloat32List);
    procedure uniform4fv(location: JWebGLUniformLocation; data: TFloat32List);
    procedure uniform1iv(location: JWebGLUniformLocation; data: TInt32List);
    procedure uniform2iv(location: JWebGLUniformLocation; data: TInt32List);
    procedure uniform3iv(location: JWebGLUniformLocation; data: TInt32List);
    procedure uniform4iv(location: JWebGLUniformLocation; data: TInt32List);
    procedure uniformMatrix2fv(location: JWebGLUniformLocation; transpose: TGLboolean; data: TFloat32List);
    procedure uniformMatrix3fv(location: JWebGLUniformLocation; transpose: TGLboolean; data: TFloat32List);
    procedure uniformMatrix4fv(location: JWebGLUniformLocation; transpose: TGLboolean; data: TFloat32List);
    procedure useProgram(&program: JWebGLProgram);
    procedure validateProgram(&program: JWebGLProgram);
    procedure vertexAttrib1f(indx: TGLuint; x: TGLfloat);
    procedure vertexAttrib1fv(indx: TGLuint; values: JFloat32Array);
    procedure vertexAttrib1fv(indx: TGLuint; values: array of TGLfloat);
    procedure vertexAttrib2f(indx: TGLuint; x: TGLfloat; y: TGLfloat);
    procedure vertexAttrib2fv(indx: TGLuint; values: JFloat32Array);
    procedure vertexAttrib2fv(indx: TGLuint; values: array of TGLfloat);
    procedure vertexAttrib3f(indx: TGLuint; x: TGLfloat; y: TGLfloat; z: TGLfloat);
    procedure vertexAttrib3fv(indx: TGLuint; values: JFloat32Array);
    procedure vertexAttrib3fv(indx: TGLuint; values: array of TGLfloat);
    procedure vertexAttrib4f(indx: TGLuint; x: TGLfloat; y: TGLfloat; z: TGLfloat; w: TGLfloat);
    procedure vertexAttrib4fv(indx: TGLuint; values: JFloat32Array);
    procedure vertexAttrib4fv(indx: TGLuint; values: array of TGLfloat);
    procedure vertexAttribPointer(indx: TGLuint; size: TGLint; &type: TGLenum; normalized: TGLboolean; stride: TGLsizei; offset: TGLintptr);
    procedure viewport(x: TGLint; y: TGLint; width: TGLsizei; height: TGLsizei);
    procedure commit; { Func=mozilla::dom::OffscreenCanvas::PrefEnabled } 
  end;

  // NoInterfaceObject
  JWEBGL_compressed_texture_s3tc = class external 'WEBGL_compressed_texture_s3tc'
  const 
    COMPRESSED_RGB_S3TC_DXT1_EXT: TGLenum = 33776;
    COMPRESSED_RGBA_S3TC_DXT1_EXT: TGLenum = 33777;
    COMPRESSED_RGBA_S3TC_DXT3_EXT: TGLenum = 33778;
    COMPRESSED_RGBA_S3TC_DXT5_EXT: TGLenum = 33779;
  end;

  // NoInterfaceObject
  JWEBGL_compressed_texture_atc = class external 'WEBGL_compressed_texture_atc'
  const 
    COMPRESSED_RGB_ATC_WEBGL: TGLenum = 35986;
    COMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL: TGLenum = 35987;
    COMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL: TGLenum = 34798;
  end;

  // NoInterfaceObject
  JWEBGL_compressed_texture_es3 = class external 'WEBGL_compressed_texture_es3'
  const 
    COMPRESSED_R11_EAC: TGLenum = 37488;
    COMPRESSED_SIGNED_R11_EAC: TGLenum = 37489;
    COMPRESSED_RG11_EAC: TGLenum = 37490;
    COMPRESSED_SIGNED_RG11_EAC: TGLenum = 37491;
    COMPRESSED_RGB8_ETC2: TGLenum = 37492;
    COMPRESSED_SRGB8_ETC2: TGLenum = 37493;
    COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2: TGLenum = 37494;
    COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2: TGLenum = 37495;
    COMPRESSED_RGBA8_ETC2_EAC: TGLenum = 37496;
    COMPRESSED_SRGB8_ALPHA8_ETC2_EAC: TGLenum = 37497;
  end;

  // NoInterfaceObject
  JWEBGL_compressed_texture_etc1 = class external 'WEBGL_compressed_texture_etc1'
  const 
    COMPRESSED_RGB_ETC1_WEBGL: TGLenum = 36196;
  end;

  // NoInterfaceObject
  JWEBGL_compressed_texture_pvrtc = class external 'WEBGL_compressed_texture_pvrtc'
  const 
    COMPRESSED_RGB_PVRTC_4BPPV1_IMG: TGLenum = 35840;
    COMPRESSED_RGB_PVRTC_2BPPV1_IMG: TGLenum = 35841;
    COMPRESSED_RGBA_PVRTC_4BPPV1_IMG: TGLenum = 35842;
    COMPRESSED_RGBA_PVRTC_2BPPV1_IMG: TGLenum = 35843;
  end;

  // NoInterfaceObject
  JWEBGL_debug_renderer_info = class external 'WEBGL_debug_renderer_info'
  const 
    UNMASKED_VENDOR_WEBGL: TGLenum = 37445;
    UNMASKED_RENDERER_WEBGL: TGLenum = 37446;
  end;

  // NoInterfaceObject
  JWEBGL_debug_shaders = class external 'WEBGL_debug_shaders'
  public
    function getTranslatedShaderSource(shader: JWebGLShader): String;
  end;

  // NoInterfaceObject
  JWEBGL_depth_texture = class external 'WEBGL_depth_texture'
  const 
    UNSIGNED_INT_24_8_WEBGL: TGLenum = 34042;
  end;

  // NoInterfaceObject
  JOES_element_index_uint = class external 'OES_element_index_uint'
  end;

  // NoInterfaceObject
  JEXT_frag_depth = class external 'EXT_frag_depth'
  end;

  // NoInterfaceObject
  JWEBGL_lose_context = class external 'WEBGL_lose_context'
  public
    procedure loseContext;
    procedure restoreContext;
  end;

  // NoInterfaceObject
  JEXT_texture_filter_anisotropic = class external 'EXT_texture_filter_anisotropic'
  const 
    TEXTURE_MAX_ANISOTROPY_EXT: TGLenum = 34046;
    MAX_TEXTURE_MAX_ANISOTROPY_EXT: TGLenum = 34047;
  end;

  // NoInterfaceObject
  JEXT_sRGB = class external 'EXT_sRGB'
  const 
    SRGB_EXT: TGLenum = 35904;
    SRGB_ALPHA_EXT: TGLenum = 35906;
    SRGB8_ALPHA8_EXT: TGLenum = 35907;
    FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT: TGLenum = 33296;
  end;

  // NoInterfaceObject
  JOES_standard_derivatives = class external 'OES_standard_derivatives'
  const 
    FRAGMENT_SHADER_DERIVATIVE_HINT_OES: TGLenum = 35723;
  end;

  // NoInterfaceObject
  JOES_texture_float = class external 'OES_texture_float'
  end;

  // NoInterfaceObject
  JWEBGL_draw_buffers = class external 'WEBGL_draw_buffers'
  const 
    COLOR_ATTACHMENT0_WEBGL: TGLenum = 36064;
    COLOR_ATTACHMENT1_WEBGL: TGLenum = 36065;
    COLOR_ATTACHMENT2_WEBGL: TGLenum = 36066;
    COLOR_ATTACHMENT3_WEBGL: TGLenum = 36067;
    COLOR_ATTACHMENT4_WEBGL: TGLenum = 36068;
    COLOR_ATTACHMENT5_WEBGL: TGLenum = 36069;
    COLOR_ATTACHMENT6_WEBGL: TGLenum = 36070;
    COLOR_ATTACHMENT7_WEBGL: TGLenum = 36071;
    COLOR_ATTACHMENT8_WEBGL: TGLenum = 36072;
    COLOR_ATTACHMENT9_WEBGL: TGLenum = 36073;
    COLOR_ATTACHMENT10_WEBGL: TGLenum = 36074;
    COLOR_ATTACHMENT11_WEBGL: TGLenum = 36075;
    COLOR_ATTACHMENT12_WEBGL: TGLenum = 36076;
    COLOR_ATTACHMENT13_WEBGL: TGLenum = 36077;
    COLOR_ATTACHMENT14_WEBGL: TGLenum = 36078;
    COLOR_ATTACHMENT15_WEBGL: TGLenum = 36079;
    DRAW_BUFFER0_WEBGL: TGLenum = 34853;
    DRAW_BUFFER1_WEBGL: TGLenum = 34854;
    DRAW_BUFFER2_WEBGL: TGLenum = 34855;
    DRAW_BUFFER3_WEBGL: TGLenum = 34856;
    DRAW_BUFFER4_WEBGL: TGLenum = 34857;
    DRAW_BUFFER5_WEBGL: TGLenum = 34858;
    DRAW_BUFFER6_WEBGL: TGLenum = 34859;
    DRAW_BUFFER7_WEBGL: TGLenum = 34860;
    DRAW_BUFFER8_WEBGL: TGLenum = 34861;
    DRAW_BUFFER9_WEBGL: TGLenum = 34862;
    DRAW_BUFFER10_WEBGL: TGLenum = 34863;
    DRAW_BUFFER11_WEBGL: TGLenum = 34864;
    DRAW_BUFFER12_WEBGL: TGLenum = 34865;
    DRAW_BUFFER13_WEBGL: TGLenum = 34866;
    DRAW_BUFFER14_WEBGL: TGLenum = 34867;
    DRAW_BUFFER15_WEBGL: TGLenum = 34868;
    MAX_COLOR_ATTACHMENTS_WEBGL: TGLenum = 36063;
    MAX_DRAW_BUFFERS_WEBGL: TGLenum = 34852;
  public
    procedure drawBuffersWEBGL(buffers: array of TGLenum);
  end;

  // NoInterfaceObject
  JOES_texture_float_linear = class external 'OES_texture_float_linear'
  end;

  // NoInterfaceObject
  JEXT_shader_texture_lod = class external 'EXT_shader_texture_lod'
  end;

  // NoInterfaceObject
  JOES_texture_half_float = class external 'OES_texture_half_float'
  const 
    HALF_FLOAT_OES: TGLenum = 36193;
  end;

  // NoInterfaceObject
  JOES_texture_half_float_linear = class external 'OES_texture_half_float_linear'
  end;

  // NoInterfaceObject
  JWEBGL_color_buffer_float = class external 'WEBGL_color_buffer_float'
  const 
    RGBA32F_EXT: TGLenum = 34836;
    RGB32F_EXT: TGLenum = 34837;
    FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT: TGLenum = 33297;
    UNSIGNED_NORMALIZED_EXT: TGLenum = 35863;
  end;

  // NoInterfaceObject
  JEXT_color_buffer_half_float = class external 'EXT_color_buffer_half_float'
  const 
    RGBA16F_EXT: TGLenum = 34842;
    RGB16F_EXT: TGLenum = 34843;
    FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT: TGLenum = 33297;
    UNSIGNED_NORMALIZED_EXT: TGLenum = 35863;
  end;

  // NoInterfaceObject
  JOES_vertex_array_object = class external 'OES_vertex_array_object'
  const 
    VERTEX_ARRAY_BINDING_OES: TGLenum = 34229;
  public
    function createVertexArrayOES: JWebGLVertexArrayObjectOES;
    procedure deleteVertexArrayOES(arrayObject: JWebGLVertexArrayObjectOES);
    function isVertexArrayOES(arrayObject: JWebGLVertexArrayObjectOES): TGLboolean; { WebGLHandlesContextLoss } 
    procedure bindVertexArrayOES(arrayObject: JWebGLVertexArrayObjectOES);
  end;

  // NoInterfaceObject
  JANGLE_instanced_arrays = class external 'ANGLE_instanced_arrays'
  const 
    VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE: TGLenum = 35070;
  public
    procedure drawArraysInstancedANGLE(mode: TGLenum; first: TGLint; count: TGLsizei; primcount: TGLsizei);
    procedure drawElementsInstancedANGLE(mode: TGLenum; count: TGLsizei; &type: TGLenum; offset: TGLintptr; primcount: TGLsizei);
    procedure vertexAttribDivisorANGLE(&index: TGLuint; divisor: TGLuint);
  end;

  // NoInterfaceObject
  JEXT_blend_minmax = class external 'EXT_blend_minmax'
  const 
    MIN_EXT: TGLenum = 32775;
    MAX_EXT: TGLenum = 32776;
  end;

  // NoInterfaceObject
  JWebGLTimerQueryEXT = class external 'WebGLTimerQueryEXT'
  end;

  // NoInterfaceObject
  JEXT_disjoint_timer_query = class external 'EXT_disjoint_timer_query'
  const 
    QUERY_COUNTER_BITS_EXT: TGLenum = 34916;
    CURRENT_QUERY_EXT: TGLenum = 34917;
    QUERY_RESULT_EXT: TGLenum = 34918;
    QUERY_RESULT_AVAILABLE_EXT: TGLenum = 34919;
    TIME_ELAPSED_EXT: TGLenum = 35007;
    TIMESTAMP_EXT: TGLenum = 36392;
    GPU_DISJOINT_EXT: TGLenum = 36795;
  public
    function createQueryEXT: JWebGLTimerQueryEXT;
    procedure deleteQueryEXT(query: JWebGLTimerQueryEXT);
    function isQueryEXT(query: JWebGLTimerQueryEXT): Boolean; { WebGLHandlesContextLoss } 
    procedure beginQueryEXT(target: TGLenum; query: JWebGLTimerQueryEXT);
    procedure endQueryEXT(target: TGLenum);
    procedure queryCounterEXT(query: JWebGLTimerQueryEXT; target: TGLenum);
    function getQueryEXT(target: TGLenum; pname: TGLenum): Variant;
    function getQueryObjectEXT(query: JWebGLTimerQueryEXT; pname: TGLenum): Variant;
  end;

implementation

end.
