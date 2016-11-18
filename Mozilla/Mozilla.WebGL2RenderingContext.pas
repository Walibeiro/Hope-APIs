unit Mozilla.WebGL2RenderingContext;

interface

type
  TGLint64 = Integer;
  TGLuint64 = Integer;
  // Pref=webgl.enable-webgl2
  JWebGLQuery = class external 'WebGLQuery'
  end;

  // Pref=webgl.enable-webgl2
  JWebGLSampler = class external 'WebGLSampler'
  end;

  // Pref=webgl.enable-webgl2
  JWebGLSync = class external 'WebGLSync'
  end;

  // Pref=webgl.enable-webgl2
  JWebGLTransformFeedback = class external 'WebGLTransformFeedback'
  end;

  // Pref=webgl.enable-webgl2
  JWebGLVertexArrayObject = class external 'WebGLVertexArrayObject'
  end;

  TUint32List = Union;
  // Pref=webgl.enable-webgl2
  JWebGL2RenderingContext = class external 'WebGL2RenderingContext' (JWebGLRenderingContext)
  const 
    READ_BUFFER: JGLenum = 3074;
    UNPACK_ROW_LENGTH: JGLenum = 3314;
    UNPACK_SKIP_ROWS: JGLenum = 3315;
    UNPACK_SKIP_PIXELS: JGLenum = 3316;
    PACK_ROW_LENGTH: JGLenum = 3330;
    PACK_SKIP_ROWS: JGLenum = 3331;
    PACK_SKIP_PIXELS: JGLenum = 3332;
    COLOR: JGLenum = 6144;
    DEPTH: JGLenum = 6145;
    STENCIL: JGLenum = 6146;
    RED: JGLenum = 6403;
    RGB8: JGLenum = 32849;
    RGBA8: JGLenum = 32856;
    RGB10_A2: JGLenum = 32857;
    TEXTURE_BINDING_3D: JGLenum = 32874;
    UNPACK_SKIP_IMAGES: JGLenum = 32877;
    UNPACK_IMAGE_HEIGHT: JGLenum = 32878;
    TEXTURE_3D: JGLenum = 32879;
    TEXTURE_WRAP_R: JGLenum = 32882;
    MAX_3D_TEXTURE_SIZE: JGLenum = 32883;
    UNSIGNED_INT_2_10_10_10_REV: JGLenum = 33640;
    MAX_ELEMENTS_VERTICES: JGLenum = 33000;
    MAX_ELEMENTS_INDICES: JGLenum = 33001;
    TEXTURE_MIN_LOD: JGLenum = 33082;
    TEXTURE_MAX_LOD: JGLenum = 33083;
    TEXTURE_BASE_LEVEL: JGLenum = 33084;
    TEXTURE_MAX_LEVEL: JGLenum = 33085;
    MIN: JGLenum = 32775;
    MAX: JGLenum = 32776;
    DEPTH_COMPONENT24: JGLenum = 33190;
    MAX_TEXTURE_LOD_BIAS: JGLenum = 34045;
    TEXTURE_COMPARE_MODE: JGLenum = 34892;
    TEXTURE_COMPARE_FUNC: JGLenum = 34893;
    CURRENT_QUERY: JGLenum = 34917;
    QUERY_RESULT: JGLenum = 34918;
    QUERY_RESULT_AVAILABLE: JGLenum = 34919;
    STREAM_READ: JGLenum = 35041;
    STREAM_COPY: JGLenum = 35042;
    STATIC_READ: JGLenum = 35045;
    STATIC_COPY: JGLenum = 35046;
    DYNAMIC_READ: JGLenum = 35049;
    DYNAMIC_COPY: JGLenum = 35050;
    MAX_DRAW_BUFFERS: JGLenum = 34852;
    DRAW_BUFFER0: JGLenum = 34853;
    DRAW_BUFFER1: JGLenum = 34854;
    DRAW_BUFFER2: JGLenum = 34855;
    DRAW_BUFFER3: JGLenum = 34856;
    DRAW_BUFFER4: JGLenum = 34857;
    DRAW_BUFFER5: JGLenum = 34858;
    DRAW_BUFFER6: JGLenum = 34859;
    DRAW_BUFFER7: JGLenum = 34860;
    DRAW_BUFFER8: JGLenum = 34861;
    DRAW_BUFFER9: JGLenum = 34862;
    DRAW_BUFFER10: JGLenum = 34863;
    DRAW_BUFFER11: JGLenum = 34864;
    DRAW_BUFFER12: JGLenum = 34865;
    DRAW_BUFFER13: JGLenum = 34866;
    DRAW_BUFFER14: JGLenum = 34867;
    DRAW_BUFFER15: JGLenum = 34868;
    MAX_FRAGMENT_UNIFORM_COMPONENTS: JGLenum = 35657;
    MAX_VERTEX_UNIFORM_COMPONENTS: JGLenum = 35658;
    SAMPLER_3D: JGLenum = 35679;
    SAMPLER_2D_SHADOW: JGLenum = 35682;
    FRAGMENT_SHADER_DERIVATIVE_HINT: JGLenum = 35723;
    PIXEL_PACK_BUFFER: JGLenum = 35051;
    PIXEL_UNPACK_BUFFER: JGLenum = 35052;
    PIXEL_PACK_BUFFER_BINDING: JGLenum = 35053;
    PIXEL_UNPACK_BUFFER_BINDING: JGLenum = 35055;
    FLOAT_MAT2x3: JGLenum = 35685;
    FLOAT_MAT2x4: JGLenum = 35686;
    FLOAT_MAT3x2: JGLenum = 35687;
    FLOAT_MAT3x4: JGLenum = 35688;
    FLOAT_MAT4x2: JGLenum = 35689;
    FLOAT_MAT4x3: JGLenum = 35690;
    SRGB: JGLenum = 35904;
    SRGB8: JGLenum = 35905;
    SRGB8_ALPHA8: JGLenum = 35907;
    COMPARE_REF_TO_TEXTURE: JGLenum = 34894;
    RGBA32F: JGLenum = 34836;
    RGB32F: JGLenum = 34837;
    RGBA16F: JGLenum = 34842;
    RGB16F: JGLenum = 34843;
    VERTEX_ATTRIB_ARRAY_INTEGER: JGLenum = 35069;
    MAX_ARRAY_TEXTURE_LAYERS: JGLenum = 35071;
    MIN_PROGRAM_TEXEL_OFFSET: JGLenum = 35076;
    MAX_PROGRAM_TEXEL_OFFSET: JGLenum = 35077;
    MAX_VARYING_COMPONENTS: JGLenum = 35659;
    TEXTURE_2D_ARRAY: JGLenum = 35866;
    TEXTURE_BINDING_2D_ARRAY: JGLenum = 35869;
    R11F_G11F_B10F: JGLenum = 35898;
    UNSIGNED_INT_10F_11F_11F_REV: JGLenum = 35899;
    RGB9_E5: JGLenum = 35901;
    UNSIGNED_INT_5_9_9_9_REV: JGLenum = 35902;
    TRANSFORM_FEEDBACK_BUFFER_MODE: JGLenum = 35967;
    MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS: JGLenum = 35968;
    TRANSFORM_FEEDBACK_VARYINGS: JGLenum = 35971;
    TRANSFORM_FEEDBACK_BUFFER_START: JGLenum = 35972;
    TRANSFORM_FEEDBACK_BUFFER_SIZE: JGLenum = 35973;
    TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN: JGLenum = 35976;
    RASTERIZER_DISCARD: JGLenum = 35977;
    MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS: JGLenum = 35978;
    MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS: JGLenum = 35979;
    INTERLEAVED_ATTRIBS: JGLenum = 35980;
    SEPARATE_ATTRIBS: JGLenum = 35981;
    TRANSFORM_FEEDBACK_BUFFER: JGLenum = 35982;
    TRANSFORM_FEEDBACK_BUFFER_BINDING: JGLenum = 35983;
    RGBA32UI: JGLenum = 36208;
    RGB32UI: JGLenum = 36209;
    RGBA16UI: JGLenum = 36214;
    RGB16UI: JGLenum = 36215;
    RGBA8UI: JGLenum = 36220;
    RGB8UI: JGLenum = 36221;
    RGBA32I: JGLenum = 36226;
    RGB32I: JGLenum = 36227;
    RGBA16I: JGLenum = 36232;
    RGB16I: JGLenum = 36233;
    RGBA8I: JGLenum = 36238;
    RGB8I: JGLenum = 36239;
    RED_INTEGER: JGLenum = 36244;
    RGB_INTEGER: JGLenum = 36248;
    RGBA_INTEGER: JGLenum = 36249;
    SAMPLER_2D_ARRAY: JGLenum = 36289;
    SAMPLER_2D_ARRAY_SHADOW: JGLenum = 36292;
    SAMPLER_CUBE_SHADOW: JGLenum = 36293;
    UNSIGNED_INT_VEC2: JGLenum = 36294;
    UNSIGNED_INT_VEC3: JGLenum = 36295;
    UNSIGNED_INT_VEC4: JGLenum = 36296;
    INT_SAMPLER_2D: JGLenum = 36298;
    INT_SAMPLER_3D: JGLenum = 36299;
    INT_SAMPLER_CUBE: JGLenum = 36300;
    INT_SAMPLER_2D_ARRAY: JGLenum = 36303;
    UNSIGNED_INT_SAMPLER_2D: JGLenum = 36306;
    UNSIGNED_INT_SAMPLER_3D: JGLenum = 36307;
    UNSIGNED_INT_SAMPLER_CUBE: JGLenum = 36308;
    UNSIGNED_INT_SAMPLER_2D_ARRAY: JGLenum = 36311;
    DEPTH_COMPONENT32F: JGLenum = 36012;
    DEPTH32F_STENCIL8: JGLenum = 36013;
    FLOAT_32_UNSIGNED_INT_24_8_REV: JGLenum = 36269;
    FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING: JGLenum = 33296;
    FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE: JGLenum = 33297;
    FRAMEBUFFER_ATTACHMENT_RED_SIZE: JGLenum = 33298;
    FRAMEBUFFER_ATTACHMENT_GREEN_SIZE: JGLenum = 33299;
    FRAMEBUFFER_ATTACHMENT_BLUE_SIZE: JGLenum = 33300;
    FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE: JGLenum = 33301;
    FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE: JGLenum = 33302;
    FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE: JGLenum = 33303;
    FRAMEBUFFER_DEFAULT: JGLenum = 33304;
    DEPTH_STENCIL_ATTACHMENT: JGLenum = 33306;
    DEPTH_STENCIL: JGLenum = 34041;
    UNSIGNED_INT_24_8: JGLenum = 34042;
    DEPTH24_STENCIL8: JGLenum = 35056;
    UNSIGNED_NORMALIZED: JGLenum = 35863;
    DRAW_FRAMEBUFFER_BINDING: JGLenum = 36006;
    READ_FRAMEBUFFER: JGLenum = 36008;
    DRAW_FRAMEBUFFER: JGLenum = 36009;
    READ_FRAMEBUFFER_BINDING: JGLenum = 36010;
    RENDERBUFFER_SAMPLES: JGLenum = 36011;
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER: JGLenum = 36052;
    MAX_COLOR_ATTACHMENTS: JGLenum = 36063;
    COLOR_ATTACHMENT1: JGLenum = 36065;
    COLOR_ATTACHMENT2: JGLenum = 36066;
    COLOR_ATTACHMENT3: JGLenum = 36067;
    COLOR_ATTACHMENT4: JGLenum = 36068;
    COLOR_ATTACHMENT5: JGLenum = 36069;
    COLOR_ATTACHMENT6: JGLenum = 36070;
    COLOR_ATTACHMENT7: JGLenum = 36071;
    COLOR_ATTACHMENT8: JGLenum = 36072;
    COLOR_ATTACHMENT9: JGLenum = 36073;
    COLOR_ATTACHMENT10: JGLenum = 36074;
    COLOR_ATTACHMENT11: JGLenum = 36075;
    COLOR_ATTACHMENT12: JGLenum = 36076;
    COLOR_ATTACHMENT13: JGLenum = 36077;
    COLOR_ATTACHMENT14: JGLenum = 36078;
    COLOR_ATTACHMENT15: JGLenum = 36079;
    FRAMEBUFFER_INCOMPLETE_MULTISAMPLE: JGLenum = 36182;
    MAX_SAMPLES: JGLenum = 36183;
    HALF_FLOAT: JGLenum = 5131;
    RG: JGLenum = 33319;
    RG_INTEGER: JGLenum = 33320;
    R8: JGLenum = 33321;
    RG8: JGLenum = 33323;
    R16F: JGLenum = 33325;
    R32F: JGLenum = 33326;
    RG16F: JGLenum = 33327;
    RG32F: JGLenum = 33328;
    R8I: JGLenum = 33329;
    R8UI: JGLenum = 33330;
    R16I: JGLenum = 33331;
    R16UI: JGLenum = 33332;
    R32I: JGLenum = 33333;
    R32UI: JGLenum = 33334;
    RG8I: JGLenum = 33335;
    RG8UI: JGLenum = 33336;
    RG16I: JGLenum = 33337;
    RG16UI: JGLenum = 33338;
    RG32I: JGLenum = 33339;
    RG32UI: JGLenum = 33340;
    VERTEX_ARRAY_BINDING: JGLenum = 34229;
    R8_SNORM: JGLenum = 36756;
    RG8_SNORM: JGLenum = 36757;
    RGB8_SNORM: JGLenum = 36758;
    RGBA8_SNORM: JGLenum = 36759;
    SIGNED_NORMALIZED: JGLenum = 36764;
    COPY_READ_BUFFER: JGLenum = 36662;
    COPY_WRITE_BUFFER: JGLenum = 36663;
    COPY_READ_BUFFER_BINDING: JGLenum = 36662;
    COPY_WRITE_BUFFER_BINDING: JGLenum = 36663;
    UNIFORM_BUFFER: JGLenum = 35345;
    UNIFORM_BUFFER_BINDING: JGLenum = 35368;
    UNIFORM_BUFFER_START: JGLenum = 35369;
    UNIFORM_BUFFER_SIZE: JGLenum = 35370;
    MAX_VERTEX_UNIFORM_BLOCKS: JGLenum = 35371;
    MAX_FRAGMENT_UNIFORM_BLOCKS: JGLenum = 35373;
    MAX_COMBINED_UNIFORM_BLOCKS: JGLenum = 35374;
    MAX_UNIFORM_BUFFER_BINDINGS: JGLenum = 35375;
    MAX_UNIFORM_BLOCK_SIZE: JGLenum = 35376;
    MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS: JGLenum = 35377;
    MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS: JGLenum = 35379;
    UNIFORM_BUFFER_OFFSET_ALIGNMENT: JGLenum = 35380;
    ACTIVE_UNIFORM_BLOCKS: JGLenum = 35382;
    UNIFORM_TYPE: JGLenum = 35383;
    UNIFORM_SIZE: JGLenum = 35384;
    UNIFORM_BLOCK_INDEX: JGLenum = 35386;
    UNIFORM_OFFSET: JGLenum = 35387;
    UNIFORM_ARRAY_STRIDE: JGLenum = 35388;
    UNIFORM_MATRIX_STRIDE: JGLenum = 35389;
    UNIFORM_IS_ROW_MAJOR: JGLenum = 35390;
    UNIFORM_BLOCK_BINDING: JGLenum = 35391;
    UNIFORM_BLOCK_DATA_SIZE: JGLenum = 35392;
    UNIFORM_BLOCK_ACTIVE_UNIFORMS: JGLenum = 35394;
    UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES: JGLenum = 35395;
    UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER: JGLenum = 35396;
    UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER: JGLenum = 35398;
    INVALID_INDEX: JGLenum = 4294967295;
    MAX_VERTEX_OUTPUT_COMPONENTS: JGLenum = 37154;
    MAX_FRAGMENT_INPUT_COMPONENTS: JGLenum = 37157;
    MAX_SERVER_WAIT_TIMEOUT: JGLenum = 37137;
    OBJECT_TYPE: JGLenum = 37138;
    SYNC_CONDITION: JGLenum = 37139;
    SYNC_STATUS: JGLenum = 37140;
    SYNC_FLAGS: JGLenum = 37141;
    SYNC_FENCE: JGLenum = 37142;
    SYNC_GPU_COMMANDS_COMPLETE: JGLenum = 37143;
    UNSIGNALED: JGLenum = 37144;
    SIGNALED: JGLenum = 37145;
    ALREADY_SIGNALED: JGLenum = 37146;
    TIMEOUT_EXPIRED: JGLenum = 37147;
    CONDITION_SATISFIED: JGLenum = 37148;
    WAIT_FAILED: JGLenum = 37149;
    SYNC_FLUSH_COMMANDS_BIT: JGLenum = 1;
    VERTEX_ATTRIB_ARRAY_DIVISOR: JGLenum = 35070;
    ANY_SAMPLES_PASSED: JGLenum = 35887;
    ANY_SAMPLES_PASSED_CONSERVATIVE: JGLenum = 36202;
    SAMPLER_BINDING: JGLenum = 35097;
    RGB10_A2UI: JGLenum = 36975;
    GREEN: JGLenum = 6404;
    BLUE: JGLenum = 6405;
    INT_2_10_10_10_REV: JGLenum = 36255;
    TRANSFORM_FEEDBACK: JGLenum = 36386;
    TRANSFORM_FEEDBACK_PAUSED: JGLenum = 36387;
    TRANSFORM_FEEDBACK_ACTIVE: JGLenum = 36388;
    TRANSFORM_FEEDBACK_BINDING: JGLenum = 36389;
    COMPRESSED_R11_EAC: JGLenum = 37488;
    COMPRESSED_SIGNED_R11_EAC: JGLenum = 37489;
    COMPRESSED_RG11_EAC: JGLenum = 37490;
    COMPRESSED_SIGNED_RG11_EAC: JGLenum = 37491;
    COMPRESSED_RGB8_ETC2: JGLenum = 37492;
    COMPRESSED_SRGB8_ETC2: JGLenum = 37493;
    COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2: JGLenum = 37494;
    COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2: JGLenum = 37495;
    COMPRESSED_RGBA8_ETC2_EAC: JGLenum = 37496;
    COMPRESSED_SRGB8_ALPHA8_ETC2_EAC: JGLenum = 37497;
    TEXTURE_IMMUTABLE_FORMAT: JGLenum = 37167;
    MAX_ELEMENT_INDEX: JGLenum = 36203;
    NUM_SAMPLE_COUNTS: JGLenum = 37760;
    TEXTURE_IMMUTABLE_LEVELS: JGLenum = 33503;
    TIMEOUT_IGNORED: TGLint64 = -1;
    MAX_CLIENT_WAIT_TIMEOUT_WEBGL: JGLenum = 37447;
  public
    procedure bufferData(target: JGLenum; size: JGLsizeiptr; usage: JGLenum);
    procedure bufferData(target: JGLenum; data: JArrayBufferView; usage: JGLenum);
    procedure bufferData(target: JGLenum; data: JArrayBuffer; usage: JGLenum);
    procedure bufferData(target: JGLenum; data: JSharedArrayBuffer; usage: JGLenum);
    procedure bufferSubData(target: JGLenum; offset: JGLintptr; data: JArrayBufferView);
    procedure bufferSubData(target: JGLenum; offset: JGLintptr; data: JArrayBuffer);
    procedure bufferSubData(target: JGLenum; offset: JGLintptr; data: JSharedArrayBuffer);
    procedure bufferData(target: JGLenum; srcData: JArrayBufferView; usage: JGLenum; srcOffset: JGLuint; length: JGLuint = 0);
    procedure bufferSubData(target: JGLenum; dstByteOffset: JGLintptr; srcData: JArrayBufferView; srcOffset: JGLuint; length: JGLuint = 0);
    procedure copyBufferSubData(readTarget: JGLenum; writeTarget: JGLenum; readOffset: JGLintptr; writeOffset: JGLintptr; size: JGLsizeiptr);
    procedure getBufferSubData(target: JGLenum; srcByteOffset: JGLintptr; dstData: JArrayBufferView; dstOffset: JGLuint = 0; length: JGLuint = 0);
    procedure blitFramebuffer(srcX0: JGLint; srcY0: JGLint; srcX1: JGLint; srcY1: JGLint; dstX0: JGLint; dstY0: JGLint; dstX1: JGLint; dstY1: JGLint; mask: JGLbitfield; filter: JGLenum);
    procedure framebufferTextureLayer(target: JGLenum; attachment: JGLenum; texture: JWebGLTexture; level: JGLint; layer: JGLint);
    procedure invalidateFramebuffer(target: JGLenum; attachments: array of JGLenum); { Throws } 
    procedure invalidateSubFramebuffer(target: JGLenum; attachments: array of JGLenum; x: JGLint; y: JGLint; width: JGLsizei; height: JGLsizei); { Throws } 
    procedure readBuffer(src: JGLenum);
    function getInternalformatParameter(target: JGLenum; internalformat: JGLenum; pname: JGLenum): Variant; { Throws } 
    procedure renderbufferStorageMultisample(target: JGLenum; samples: JGLsizei; internalformat: JGLenum; width: JGLsizei; height: JGLsizei);
    procedure texStorage2D(target: JGLenum; levels: JGLsizei; internalformat: JGLenum; width: JGLsizei; height: JGLsizei);
    procedure texStorage3D(target: JGLenum; levels: JGLsizei; internalformat: JGLenum; width: JGLsizei; height: JGLsizei; depth: JGLsizei);
    procedure texImage2D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; pixels: JArrayBufferView); { Throws } 
    procedure texImage2D(target: JGLenum; level: JGLint; internalformat: JGLenum; format: JGLenum; &type: JGLenum; source: JHTMLCanvasElement); { Throws } 
    procedure texImage2D(target: JGLenum; level: JGLint; internalformat: JGLenum; format: JGLenum; &type: JGLenum; source: JHTMLImageElement); { Throws } 
    procedure texImage2D(target: JGLenum; level: JGLint; internalformat: JGLenum; format: JGLenum; &type: JGLenum; source: JHTMLVideoElement); { Throws } 
    procedure texImage2D(target: JGLenum; level: JGLint; internalformat: JGLenum; format: JGLenum; &type: JGLenum; source: JImageData); { Throws } 
    procedure texSubImage2D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; format: JGLenum; &type: JGLenum; source: JHTMLCanvasElement); { Throws } 
    procedure texSubImage2D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; format: JGLenum; &type: JGLenum; source: JHTMLImageElement); { Throws } 
    procedure texSubImage2D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; format: JGLenum; &type: JGLenum; source: JHTMLVideoElement); { Throws } 
    procedure texSubImage2D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; format: JGLenum; &type: JGLenum; source: JImageData); { Throws } 
    procedure texImage2D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; pboOffset: JGLintptr); { Throws } 
    procedure texImage2D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; source: JHTMLCanvasElement); { Throws } 
    procedure texImage2D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; source: JHTMLImageElement); { Throws } 
    procedure texImage2D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; source: JHTMLVideoElement); { Throws } 
    procedure texImage2D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; source: JImageData); { Throws } 
    procedure texImage2D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; srcData: JArrayBufferView; srcOffset: JGLuint); { Throws } 
    procedure texImage3D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; pboOffset: JGLintptr); { Throws } 
    procedure texImage3D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; source: JHTMLCanvasElement); { Throws } 
    procedure texImage3D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; source: JHTMLImageElement); { Throws } 
    procedure texImage3D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; source: JHTMLVideoElement); { Throws } 
    procedure texImage3D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; source: JImageData); { Throws } 
    procedure texImage3D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; srcData: JArrayBufferView); { Throws } 
    procedure texImage3D(target: JGLenum; level: JGLint; internalformat: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; border: JGLint; format: JGLenum; &type: JGLenum; srcData: JArrayBufferView; srcOffset: JGLuint); { Throws } 
    procedure texSubImage2D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; width: JGLsizei; height: JGLsizei; format: JGLenum; &type: JGLenum; pboOffset: JGLintptr); { Throws } 
    procedure texSubImage2D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; width: JGLsizei; height: JGLsizei; format: JGLenum; &type: JGLenum; source: JHTMLCanvasElement); { Throws } 
    procedure texSubImage2D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; width: JGLsizei; height: JGLsizei; format: JGLenum; &type: JGLenum; source: JHTMLImageElement); { Throws } 
    procedure texSubImage2D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; width: JGLsizei; height: JGLsizei; format: JGLenum; &type: JGLenum; source: JHTMLVideoElement); { Throws } 
    procedure texSubImage2D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; width: JGLsizei; height: JGLsizei; format: JGLenum; &type: JGLenum; source: JImageData); { Throws } 
    procedure texSubImage2D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; width: JGLsizei; height: JGLsizei; format: JGLenum; &type: JGLenum; srcData: JArrayBufferView; srcOffset: JGLuint = 0); { Throws } 
    procedure texSubImage3D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; zoffset: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; format: JGLenum; &type: JGLenum; pboOffset: JGLintptr); { Throws } 
    procedure texSubImage3D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; zoffset: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; format: JGLenum; &type: JGLenum; source: JHTMLCanvasElement); { Throws } 
    procedure texSubImage3D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; zoffset: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; format: JGLenum; &type: JGLenum; source: JHTMLImageElement); { Throws } 
    procedure texSubImage3D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; zoffset: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; format: JGLenum; &type: JGLenum; source: JHTMLVideoElement); { Throws } 
    procedure texSubImage3D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; zoffset: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; format: JGLenum; &type: JGLenum; source: JImageData); { Throws } 
    procedure texSubImage3D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; zoffset: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; format: JGLenum; &type: JGLenum; srcData: JArrayBufferView; srcOffset: JGLuint = 0); { Throws } 
    procedure copyTexSubImage3D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; zoffset: JGLint; x: JGLint; y: JGLint; width: JGLsizei; height: JGLsizei);
    procedure compressedTexImage2D(target: JGLenum; level: JGLint; internalformat: JGLenum; width: JGLsizei; height: JGLsizei; border: JGLint; offset: JGLintptr);
    procedure compressedTexImage2D(target: JGLenum; level: JGLint; internalformat: JGLenum; width: JGLsizei; height: JGLsizei; border: JGLint; srcData: JArrayBufferView; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure compressedTexImage3D(target: JGLenum; level: JGLint; internalformat: JGLenum; width: JGLsizei; height: JGLsizei; depth: JGLsizei; border: JGLint; offset: JGLintptr);
    procedure compressedTexImage3D(target: JGLenum; level: JGLint; internalformat: JGLenum; width: JGLsizei; height: JGLsizei; depth: JGLsizei; border: JGLint; srcData: JArrayBufferView; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure compressedTexSubImage2D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; width: JGLsizei; height: JGLsizei; format: JGLenum; offset: JGLintptr);
    procedure compressedTexSubImage2D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; width: JGLsizei; height: JGLsizei; format: JGLenum; srcData: JArrayBufferView; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure compressedTexSubImage3D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; zoffset: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; format: JGLenum; offset: JGLintptr);
    procedure compressedTexSubImage3D(target: JGLenum; level: JGLint; xoffset: JGLint; yoffset: JGLint; zoffset: JGLint; width: JGLsizei; height: JGLsizei; depth: JGLsizei; format: JGLenum; srcData: JArrayBufferView; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    function getFragDataLocation(&program: JWebGLProgram; &name: String): JGLint; { WebGLHandlesContextLoss } 
    procedure uniform1ui(location: JWebGLUniformLocation; v0: JGLuint);
    procedure uniform2ui(location: JWebGLUniformLocation; v0: JGLuint; v1: JGLuint);
    procedure uniform3ui(location: JWebGLUniformLocation; v0: JGLuint; v1: JGLuint; v2: JGLuint);
    procedure uniform4ui(location: JWebGLUniformLocation; v0: JGLuint; v1: JGLuint; v2: JGLuint; v3: JGLuint);
    procedure uniform1fv(location: JWebGLUniformLocation; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniform2fv(location: JWebGLUniformLocation; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniform3fv(location: JWebGLUniformLocation; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniform4fv(location: JWebGLUniformLocation; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniform1iv(location: JWebGLUniformLocation; data: JInt32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniform2iv(location: JWebGLUniformLocation; data: JInt32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniform3iv(location: JWebGLUniformLocation; data: JInt32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniform4iv(location: JWebGLUniformLocation; data: JInt32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniform1uiv(location: JWebGLUniformLocation; data: TUint32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniform2uiv(location: JWebGLUniformLocation; data: TUint32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniform3uiv(location: JWebGLUniformLocation; data: TUint32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniform4uiv(location: JWebGLUniformLocation; data: TUint32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniformMatrix2fv(location: JWebGLUniformLocation; transpose: JGLboolean; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniformMatrix3x2fv(location: JWebGLUniformLocation; transpose: JGLboolean; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniformMatrix4x2fv(location: JWebGLUniformLocation; transpose: JGLboolean; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniformMatrix2x3fv(location: JWebGLUniformLocation; transpose: JGLboolean; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniformMatrix3fv(location: JWebGLUniformLocation; transpose: JGLboolean; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniformMatrix4x3fv(location: JWebGLUniformLocation; transpose: JGLboolean; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniformMatrix2x4fv(location: JWebGLUniformLocation; transpose: JGLboolean; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniformMatrix3x4fv(location: JWebGLUniformLocation; transpose: JGLboolean; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure uniformMatrix4fv(location: JWebGLUniformLocation; transpose: JGLboolean; data: JFloat32List; srcOffset: JGLuint = 0; srcLength: JGLuint = 0);
    procedure vertexAttribI4i(&index: JGLuint; x: JGLint; y: JGLint; z: JGLint; w: JGLint);
    procedure vertexAttribI4iv(&index: JGLuint; values: JInt32List);
    procedure vertexAttribI4ui(&index: JGLuint; x: JGLuint; y: JGLuint; z: JGLuint; w: JGLuint);
    procedure vertexAttribI4uiv(&index: JGLuint; values: TUint32List);
    procedure vertexAttribIPointer(&index: JGLuint; size: JGLint; &type: JGLenum; stride: JGLsizei; offset: JGLintptr);
    procedure vertexAttribDivisor(&index: JGLuint; divisor: JGLuint);
    procedure drawArraysInstanced(mode: JGLenum; first: JGLint; count: JGLsizei; instanceCount: JGLsizei);
    procedure drawElementsInstanced(mode: JGLenum; count: JGLsizei; &type: JGLenum; offset: JGLintptr; instanceCount: JGLsizei);
    procedure drawRangeElements(mode: JGLenum; start: JGLuint; &end: JGLuint; count: JGLsizei; &type: JGLenum; offset: JGLintptr);
    procedure readPixels(x: JGLint; y: JGLint; width: JGLsizei; height: JGLsizei; format: JGLenum; &type: JGLenum; offset: JGLintptr); { Throws } 
    procedure readPixels(x: JGLint; y: JGLint; width: JGLsizei; height: JGLsizei; format: JGLenum; &type: JGLenum; dstData: JArrayBufferView; dstOffset: JGLuint = 0); { Throws } 
    procedure drawBuffers(buffers: array of JGLenum);
    procedure clearBufferfv(buffer: JGLenum; drawbuffer: JGLint; values: JFloat32List; srcOffset: JGLuint = 0);
    procedure clearBufferiv(buffer: JGLenum; drawbuffer: JGLint; values: JInt32List; srcOffset: JGLuint = 0);
    procedure clearBufferuiv(buffer: JGLenum; drawbuffer: JGLint; values: TUint32List; srcOffset: JGLuint = 0);
    procedure clearBufferfi(buffer: JGLenum; drawbuffer: JGLint; depth: JGLfloat; stencil: JGLint);
    function createQuery: JWebGLQuery;
    procedure deleteQuery(query: JWebGLQuery);
    function isQuery(query: JWebGLQuery): JGLboolean; { WebGLHandlesContextLoss } 
    procedure beginQuery(target: JGLenum; query: JWebGLQuery);
    procedure endQuery(target: JGLenum);
    function getQuery(target: JGLenum; pname: JGLenum): JWebGLQuery;
    function getQueryParameter(query: JWebGLQuery; pname: JGLenum): Variant;
    function createSampler: JWebGLSampler;
    procedure deleteSampler(sampler: JWebGLSampler);
    function isSampler(sampler: JWebGLSampler): JGLboolean; { WebGLHandlesContextLoss } 
    procedure bindSampler(&unit: JGLuint; sampler: JWebGLSampler);
    procedure samplerParameteri(sampler: JWebGLSampler; pname: JGLenum; param: JGLint);
    procedure samplerParameterf(sampler: JWebGLSampler; pname: JGLenum; param: JGLfloat);
    function getSamplerParameter(sampler: JWebGLSampler; pname: JGLenum): Variant;
    function fenceSync(condition: JGLenum; &flags: JGLbitfield): JWebGLSync;
    function isSync(sync: JWebGLSync): JGLboolean; { WebGLHandlesContextLoss } 
    procedure deleteSync(sync: JWebGLSync);
    function clientWaitSync(sync: JWebGLSync; &flags: JGLbitfield; timeout: TGLint64): JGLenum;
    procedure waitSync(sync: JWebGLSync; &flags: JGLbitfield; timeout: TGLint64);
    function getSyncParameter(sync: JWebGLSync; pname: JGLenum): Variant;
    function createTransformFeedback: JWebGLTransformFeedback;
    procedure deleteTransformFeedback(tf: JWebGLTransformFeedback);
    function isTransformFeedback(tf: JWebGLTransformFeedback): JGLboolean; { WebGLHandlesContextLoss } 
    procedure bindTransformFeedback(target: JGLenum; tf: JWebGLTransformFeedback);
    procedure beginTransformFeedback(primitiveMode: JGLenum);
    procedure endTransformFeedback;
    procedure transformFeedbackVaryings(&program: JWebGLProgram; varyings: array of String; bufferMode: JGLenum);
    function getTransformFeedbackVarying(&program: JWebGLProgram; &index: JGLuint): JWebGLActiveInfo; { NewObject } 
    procedure pauseTransformFeedback;
    procedure resumeTransformFeedback;
    procedure bindBufferBase(target: JGLenum; &index: JGLuint; buffer: JWebGLBuffer);
    procedure bindBufferRange(target: JGLenum; &index: JGLuint; buffer: JWebGLBuffer; offset: JGLintptr; size: JGLsizeiptr);
    function getIndexedParameter(target: JGLenum; &index: JGLuint): Variant; { Throws } 
    function getUniformIndices(&program: JWebGLProgram; uniformNames: array of String): array of JGLuint;
    function getActiveUniforms(&program: JWebGLProgram; uniformIndices: array of JGLuint; pname: JGLenum): Variant;
    function getUniformBlockIndex(&program: JWebGLProgram; uniformBlockName: String): JGLuint;
    function getActiveUniformBlockParameter(&program: JWebGLProgram; uniformBlockIndex: JGLuint; pname: JGLenum): Variant; { Throws } 
    function getActiveUniformBlockName(&program: JWebGLProgram; uniformBlockIndex: JGLuint): String;
    procedure uniformBlockBinding(&program: JWebGLProgram; uniformBlockIndex: JGLuint; uniformBlockBinding: JGLuint);
    function createVertexArray: JWebGLVertexArrayObject;
    procedure deleteVertexArray(vertexArray: JWebGLVertexArrayObject);
    function isVertexArray(vertexArray: JWebGLVertexArrayObject): JGLboolean; { WebGLHandlesContextLoss } 
    procedure bindVertexArray(&array: JWebGLVertexArrayObject);
  end;

  // NoInterfaceObject
  JEXT_color_buffer_float = class external 'EXT_color_buffer_float'
  end;

implementation

end.
