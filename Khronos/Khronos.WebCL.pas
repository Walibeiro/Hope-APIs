unit Khronos.WebCL;

interface

uses
  W3C.DOM4, Khronos.WebGL;

type
  TCLboolean = Boolean;
  TCLint = Integer;
  TCLuint = Integer;
  TCLlong = Integer;
  TCLulong = Integer;
  TCLenum = Integer;
  JWebCLCallback = procedure(status: TCLenum; userdata: Variant);

  JWebCLException = class external 'WebCLException' (JDOMException)
  public 
    &name: String;
    message: String;
  end;

  JWebCLDevice = class external 'WebCLDevice'
  public
    function getInfo(&name: TCLenum): Variant;
    function getSupportedExtensions: array of String;
    function enableExtension(extensionName: String): TCLboolean;
  end;

  JWebCLPlatform = class external 'WebCLPlatform'
  public
    function getInfo(&name: TCLenum): Variant;
    function getDevices: array of JWebCLDevice; overload;
    function getDevices(deviceType: TCLenum): array of JWebCLDevice; overload;
    function getSupportedExtensions: array of String;
    function enableExtension(extensionName: String): TCLboolean;
  end;

  JWebCLImageDescriptor = class external 'WebCLImageDescriptor'
  public
    channelOrder: TCLenum;
    channelType: TCLenum;
    width: TCLuint;
    height: TCLuint;
    rowPitch: TCLuint;
  end;

  JWebCLGLObjectInfo = class external 'WebCLGLObjectInfo'
  public
    glObject: Variant;
    &type: TCLenum;
    textureTarget: JGLenum;
    mipmapLevel: TCLint;
  end;

  JWebCLMemoryObject = class external 'WebCLMemoryObject'
  public
    function getInfo(&name: TCLenum): Variant;
    procedure release;
    function getGLObjectInfo: JWebCLGLObjectInfo;
  end;

  JWebCLBuffer = class external 'WebCLBuffer' (JWebCLMemoryObject)
  public
    function createSubBuffer(memFlags: TCLenum; origin: TCLuint; sizeInBytes: TCLuint): JWebCLBuffer;
  end;

  JWebCLCommandQueue = class external 'WebCLCommandQueue'
  public
    procedure enqueueCopyBuffer(srcBuffer: JWebCLBuffer; dstBuffer: JWebCLBuffer; srcOffset: TCLuint; dstOffset: TCLuint; numBytes: TCLuint; eventWaitList: array of JWebCLEvent = ; event: JWebCLEvent = );
    procedure enqueueCopyBufferRect(srcBuffer: JWebCLBuffer; dstBuffer: JWebCLBuffer; srcOrigin: array of TCLuint; dstOrigin: array of TCLuint; region: array of TCLuint; srcRowPitch: TCLuint; srcSlicePitch: TCLuint; dstRowPitch: TCLuint; dstSlicePitch: TCLuint; eventWaitList: array of JWebCLEvent = ; event: JWebCLEvent = );
    procedure enqueueCopyImage(srcImage: JWebCLImage; dstImage: JWebCLImage; srcOrigin: array of TCLuint; dstOrigin: array of TCLuint; region: array of TCLuint; eventWaitList: array of JWebCLEvent = ; event: JWebCLEvent = );
    procedure enqueueCopyImageToBuffer(srcImage: JWebCLImage; dstBuffer: JWebCLBuffer; srcOrigin: array of TCLuint; srcRegion: array of TCLuint; dstOffset: TCLuint; eventWaitList: array of JWebCLEvent = ; event: JWebCLEvent = );
    procedure enqueueCopyBufferToImage(srcBuffer: JWebCLBuffer; dstImage: JWebCLImage; srcOffset: TCLuint; dstOrigin: array of TCLuint; dstRegion: array of TCLuint; eventWaitList: array of JWebCLEvent = ; event: JWebCLEvent = );
    procedure enqueueReadBuffer(buffer: JWebCLBuffer; blockingRead: TCLboolean; bufferOffset: TCLuint; numBytes: TCLuint; hostPtr: JArrayBufferView; eventWaitList: array of JWebCLEvent = ; event: JWebCLEvent = );
    procedure enqueueReadBufferRect(buffer: JWebCLBuffer; blockingRead: TCLboolean; bufferOrigin: array of TCLuint; hostOrigin: array of TCLuint; region: array of TCLuint; bufferRowPitch: TCLuint; bufferSlicePitch: TCLuint; hostRowPitch: TCLuint; hostSlicePitch: TCLuint; hostPtr: JArrayBufferView; eventWaitList: array of JWebCLEvent = ; event: JWebCLEvent = );
    procedure enqueueReadImage(image: JWebCLImage; blockingRead: TCLboolean; origin: array of TCLuint; region: array of TCLuint; hostRowPitch: TCLuint; hostPtr: JArrayBufferView; eventWaitList: array of JWebCLEvent = ; event: JWebCLEvent = );
    procedure enqueueWriteBuffer(buffer: JWebCLBuffer; blockingWrite: TCLboolean; bufferOffset: TCLuint; numBytes: TCLuint; hostPtr: JArrayBufferView; eventWaitList: array of JWebCLEvent = ; event: JWebCLEvent = );
    procedure enqueueWriteBufferRect(buffer: JWebCLBuffer; blockingWrite: TCLboolean; bufferOrigin: array of TCLuint; hostOrigin: array of TCLuint; region: array of TCLuint; bufferRowPitch: TCLuint; bufferSlicePitch: TCLuint; hostRowPitch: TCLuint; hostSlicePitch: TCLuint; hostPtr: JArrayBufferView; eventWaitList: array of JWebCLEvent = ; event: JWebCLEvent = );
    procedure enqueueWriteImage(image: JWebCLImage; blockingWrite: TCLboolean; origin: array of TCLuint; region: array of TCLuint; hostRowPitch: TCLuint; hostPtr: JArrayBufferView; eventWaitList: array of JWebCLEvent = ; event: JWebCLEvent = );
    procedure enqueueNDRangeKernel(kernel: JWebCLKernel; workDim: TCLuint; globalWorkOffset: array of TCLuint; globalWorkSize: array of TCLuint); overload;
    procedure enqueueNDRangeKernel(kernel: JWebCLKernel; workDim: TCLuint; globalWorkOffset: array of TCLuint; globalWorkSize: array of TCLuint; localWorkSize: array of TCLuint); overload;
    procedure enqueueNDRangeKernel(kernel: JWebCLKernel; workDim: TCLuint; globalWorkOffset: array of TCLuint; globalWorkSize: array of TCLuint; localWorkSize: array of TCLuint; eventWaitList: array of JWebCLEvent); overload;
    procedure enqueueNDRangeKernel(kernel: JWebCLKernel; workDim: TCLuint; globalWorkOffset: array of TCLuint; globalWorkSize: array of TCLuint; localWorkSize: array of TCLuint; eventWaitList: array of JWebCLEvent; event: JWebCLEvent); overload;
    procedure enqueueMarker(event: JWebCLEvent);
    procedure enqueueBarrier;
    procedure enqueueWaitForEvents(eventWaitList: array of JWebCLEvent);
    procedure finish; overload;
    procedure finish(whenFinished: JWebCLCallback); overload;
    procedure flush;
    function getInfo(&name: TCLenum): Variant;
    procedure release;
    procedure enqueueAcquireGLObjects(memObjects: array of JWebCLMemoryObject; event: JWebCLEvent = ); overload;
    procedure enqueueAcquireGLObjects(memObjects: array of JWebCLMemoryObject; eventWaitList: array of JWebCLEvent; event: JWebCLEvent = ); overload;
    procedure enqueueReleaseGLObjects(memObjects: array of JWebCLMemoryObject; event: JWebCLEvent = ); overload;
    procedure enqueueReleaseGLObjects(memObjects: array of JWebCLMemoryObject; eventWaitList: array of JWebCLEvent; event: JWebCLEvent = ); overload;
  end;

  JWebCLImage = class external 'WebCLImage' (JWebCLMemoryObject)
  public
    function getInfo: JWebCLImageDescriptor;
  end;

  JWebCLSampler = class external 'WebCLSampler'
  public
    function getInfo(&name: TCLenum): Variant;
    procedure release;
  end;

  JWebCLProgram = class external 'WebCLProgram'
  public
    function getInfo(&name: TCLenum): Variant;
    function getBuildInfo(device: JWebCLDevice; &name: TCLenum): Variant;
    procedure build(devices: array of JWebCLDevice = ; options: String = ); overload;
    procedure build(devices: array of JWebCLDevice = ; options: String = ); overload;
    procedure build(devices: array of JWebCLDevice = ; options: String = ); overload;
    procedure build(devices: array of JWebCLDevice = ; options: String = ; whenFinished: JWebCLCallback); overload;
    function createKernel(kernelName: String): JWebCLKernel;
    function createKernelsInProgram: array of JWebCLKernel;
    procedure release;
  end;

  JWebCLKernel = class external 'WebCLKernel'
  public
    function getInfo(&name: TCLenum): Variant;
    function getWorkGroupInfo(device: JWebCLDevice; &name: TCLenum): Variant;
    function getArgInfo(&index: TCLuint): JWebCLKernelArgInfo;
    procedure setArg(&index: TCLuint; buffer: JWebCLBuffer);
    procedure setArg(&index: TCLuint; image: JWebCLImage);
    procedure setArg(&index: TCLuint; value: JWebCLSampler);
    procedure setArg(&index: TCLuint; value: JArrayBufferView);
    procedure release;
  end;

  JWebCLKernelArgInfo = class external 'WebCLKernelArgInfo'
  public
    &name: String;
    typeName: String;
    addressQualifier: String;
    accessQualifier: String;
  end;

  // Constructor
  JWebCLEvent = class external 'WebCLEvent'
  public
    function getInfo(&name: TCLenum): Variant;
    function getProfilingInfo(&name: TCLenum): TCLulong;
    procedure setCallback(commandExecCallbackType: TCLenum; notify: JWebCLCallback);
    procedure release;
  end;

  JWebCLCallback = procedure(event: JWebCLEvent);

  JWebCLUserEvent = class external 'WebCLUserEvent' (JWebCLEvent)
  public
    procedure setStatus(executionStatus: TCLint);
  end;

  JWebCLContext = class external 'WebCLContext'
  public
    function createBuffer(memFlags: TCLenum; sizeInBytes: TCLuint): JWebCLBuffer; overload;
    function createBuffer(memFlags: TCLenum; sizeInBytes: TCLuint; hostPtr: JArrayBufferView): JWebCLBuffer; overload;
    function createCommandQueue(device: JWebCLDevice = ; properties: TCLenum = 0): JWebCLCommandQueue;
    function createImage(memFlags: TCLenum; descriptor: JWebCLImageDescriptor): JWebCLImage; overload;
    function createImage(memFlags: TCLenum; descriptor: JWebCLImageDescriptor; hostPtr: JArrayBufferView): JWebCLImage; overload;
    function createProgram(source: String): JWebCLProgram;
    function createSampler(normalizedCoords: TCLboolean; addressingMode: TCLenum; filterMode: TCLenum): JWebCLSampler;
    function createUserEvent: JWebCLUserEvent;
    function getInfo(&name: TCLenum): Variant;
    function getSupportedImageFormats: array of JWebCLImageDescriptor; overload;
    function getSupportedImageFormats(memFlags: TCLenum): array of JWebCLImageDescriptor; overload;
    procedure release;
    procedure releaseAll;
    function getGLContext: JWebGLRenderingContext;
    function createFromGLBuffer(memFlags: TCLenum; buffer: JWebGLBuffer): JWebCLBuffer;
    function createFromGLRenderbuffer(memFlags: TCLenum; renderbuffer: JWebGLRenderbuffer): JWebCLImage;
    function createFromGLTexture(memFlags: TCLenum; textureTarget: JGLenum; miplevel: TCLint; texture: JWebGLTexture): JWebCLImage;
  end;

  JWebCL = class external 'WebCL'
  const
    SUCCESS: TCLint = 0;
    DEVICE_NOT_FOUND: TCLint = -1;
    DEVICE_NOT_AVAILABLE: TCLint = -2;
    COMPILER_NOT_AVAILABLE: TCLint = -3;
    MEM_OBJECT_ALLOCATION_FAILURE: TCLint = -4;
    OUT_OF_RESOURCES: TCLint = -5;
    OUT_OF_HOST_MEMORY: TCLint = -6;
    PROFILING_INFO_NOT_AVAILABLE: TCLint = -7;
    MEM_COPY_OVERLAP: TCLint = -8;
    IMAGE_FORMAT_MISMATCH: TCLint = -9;
    IMAGE_FORMAT_NOT_SUPPORTED: TCLint = -10;
    BUILD_PROGRAM_FAILURE: TCLint = -11;
    MAP_FAILURE: TCLint = -12;
    MISALIGNED_SUB_BUFFER_OFFSET: TCLint = -13;
    EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST: TCLint = -14;
    INVALID_VALUE: TCLint = -30;
    INVALID_DEVICE_TYPE: TCLint = -31;
    INVALID_PLATFORM: TCLint = -32;
    INVALID_DEVICE: TCLint = -33;
    INVALID_CONTEXT: TCLint = -34;
    INVALID_QUEUE_PROPERTIES: TCLint = -35;
    INVALID_COMMAND_QUEUE: TCLint = -36;
    INVALID_HOST_PTR: TCLint = -37;
    INVALID_MEM_OBJECT: TCLint = -38;
    INVALID_IMAGE_FORMAT_DESCRIPTOR: TCLint = -39;
    INVALID_IMAGE_SIZE: TCLint = -40;
    INVALID_SAMPLER: TCLint = -41;
    INVALID_BINARY: TCLint = -42;
    INVALID_BUILD_OPTIONS: TCLint = -43;
    INVALID_PROGRAM: TCLint = -44;
    INVALID_PROGRAM_EXECUTABLE: TCLint = -45;
    INVALID_KERNEL_NAME: TCLint = -46;
    INVALID_KERNEL_DEFINITION: TCLint = -47;
    INVALID_KERNEL: TCLint = -48;
    INVALID_ARG_INDEX: TCLint = -49;
    INVALID_ARG_VALUE: TCLint = -50;
    INVALID_ARG_SIZE: TCLint = -51;
    INVALID_KERNEL_ARGS: TCLint = -52;
    INVALID_WORK_DIMENSION: TCLint = -53;
    INVALID_WORK_GROUP_SIZE: TCLint = -54;
    INVALID_WORK_ITEM_SIZE: TCLint = -55;
    INVALID_GLOBAL_OFFSET: TCLint = -56;
    INVALID_EVENT_WAIT_LIST: TCLint = -57;
    INVALID_EVENT: TCLint = -58;
    INVALID_OPERATION: TCLint = -59;
    INVALID_BUFFER_SIZE: TCLint = -61;
    INVALID_GLOBAL_WORK_SIZE: TCLint = -63;
    INVALID_PROPERTY: TCLint = -64;
    &FALSE: TCLenum = 0;
    &TRUE: TCLenum = 1;
    PLATFORM_PROFILE: TCLenum = 2304;
    PLATFORM_VERSION: TCLenum = 2305;
    PLATFORM_NAME: TCLenum = 2306;
    PLATFORM_VENDOR: TCLenum = 2307;
    PLATFORM_EXTENSIONS: TCLenum = 2308;
    DEVICE_TYPE_DEFAULT: TCLenum = 1;
    DEVICE_TYPE_CPU: TCLenum = 2;
    DEVICE_TYPE_GPU: TCLenum = 4;
    DEVICE_TYPE_ACCELERATOR: TCLenum = 8;
    DEVICE_TYPE_ALL: TCLenum = 4294967295;
    DEVICE_TYPE: TCLenum = 4096;
    DEVICE_VENDOR_ID: TCLenum = 4097;
    DEVICE_MAX_COMPUTE_UNITS: TCLenum = 4098;
    DEVICE_MAX_WORK_ITEM_DIMENSIONS: TCLenum = 4099;
    DEVICE_MAX_WORK_GROUP_SIZE: TCLenum = 4100;
    DEVICE_MAX_WORK_ITEM_SIZES: TCLenum = 4101;
    DEVICE_PREFERRED_VECTOR_WIDTH_CHAR: TCLenum = 4102;
    DEVICE_PREFERRED_VECTOR_WIDTH_SHORT: TCLenum = 4103;
    DEVICE_PREFERRED_VECTOR_WIDTH_INT: TCLenum = 4104;
    DEVICE_PREFERRED_VECTOR_WIDTH_LONG: TCLenum = 4105;
    DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT: TCLenum = 4106;
    DEVICE_MAX_CLOCK_FREQUENCY: TCLenum = 4108;
    DEVICE_ADDRESS_BITS: TCLenum = 4109;
    DEVICE_MAX_READ_IMAGE_ARGS: TCLenum = 4110;
    DEVICE_MAX_WRITE_IMAGE_ARGS: TCLenum = 4111;
    DEVICE_MAX_MEM_ALLOC_SIZE: TCLenum = 4112;
    DEVICE_IMAGE2D_MAX_WIDTH: TCLenum = 4113;
    DEVICE_IMAGE2D_MAX_HEIGHT: TCLenum = 4114;
    DEVICE_IMAGE3D_MAX_WIDTH: TCLenum = 4115;
    DEVICE_IMAGE3D_MAX_HEIGHT: TCLenum = 4116;
    DEVICE_IMAGE3D_MAX_DEPTH: TCLenum = 4117;
    DEVICE_IMAGE_SUPPORT: TCLenum = 4118;
    DEVICE_MAX_PARAMETER_SIZE: TCLenum = 4119;
    DEVICE_MAX_SAMPLERS: TCLenum = 4120;
    DEVICE_MEM_BASE_ADDR_ALIGN: TCLenum = 4121;
    DEVICE_SINGLE_FP_CONFIG: TCLenum = 4123;
    DEVICE_GLOBAL_MEM_CACHE_TYPE: TCLenum = 4124;
    DEVICE_GLOBAL_MEM_CACHELINE_SIZE: TCLenum = 4125;
    DEVICE_GLOBAL_MEM_CACHE_SIZE: TCLenum = 4126;
    DEVICE_GLOBAL_MEM_SIZE: TCLenum = 4127;
    DEVICE_MAX_CONSTANT_BUFFER_SIZE: TCLenum = 4128;
    DEVICE_MAX_CONSTANT_ARGS: TCLenum = 4129;
    DEVICE_LOCAL_MEM_TYPE: TCLenum = 4130;
    DEVICE_LOCAL_MEM_SIZE: TCLenum = 4131;
    DEVICE_ERROR_CORRECTION_SUPPORT: TCLenum = 4132;
    DEVICE_PROFILING_TIMER_RESOLUTION: TCLenum = 4133;
    DEVICE_ENDIAN_LITTLE: TCLenum = 4134;
    DEVICE_AVAILABLE: TCLenum = 4135;
    DEVICE_COMPILER_AVAILABLE: TCLenum = 4136;
    DEVICE_EXECUTION_CAPABILITIES: TCLenum = 4137;
    DEVICE_QUEUE_PROPERTIES: TCLenum = 4138;
    DEVICE_NAME: TCLenum = 4139;
    DEVICE_VENDOR: TCLenum = 4140;
    DRIVER_VERSION: TCLenum = 4141;
    DEVICE_PROFILE: TCLenum = 4142;
    DEVICE_VERSION: TCLenum = 4143;
    DEVICE_EXTENSIONS: TCLenum = 4144;
    DEVICE_PLATFORM: TCLenum = 4145;
    DEVICE_HOST_UNIFIED_MEMORY: TCLenum = 4149;
    DEVICE_NATIVE_VECTOR_WIDTH_CHAR: TCLenum = 4150;
    DEVICE_NATIVE_VECTOR_WIDTH_SHORT: TCLenum = 4151;
    DEVICE_NATIVE_VECTOR_WIDTH_INT: TCLenum = 4152;
    DEVICE_NATIVE_VECTOR_WIDTH_LONG: TCLenum = 4153;
    DEVICE_NATIVE_VECTOR_WIDTH_FLOAT: TCLenum = 4154;
    DEVICE_OPENCL_C_VERSION: TCLenum = 4157;
    FP_DENORM: TCLenum = 1;
    FP_INF_NAN: TCLenum = 2;
    FP_ROUND_TO_NEAREST: TCLenum = 4;
    FP_ROUND_TO_ZERO: TCLenum = 8;
    FP_ROUND_TO_INF: TCLenum = 16;
    FP_FMA: TCLenum = 32;
    FP_SOFT_FLOAT: TCLenum = 64;
    NONE: TCLenum = 0;
    READ_ONLY_CACHE: TCLenum = 1;
    READ_WRITE_CACHE: TCLenum = 2;
    LOCAL: TCLenum = 1;
    GLOBAL: TCLenum = 2;
    EXEC_KERNEL: TCLenum = 1;
    QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE: TCLenum = 1;
    QUEUE_PROFILING_ENABLE: TCLenum = 2;
    CONTEXT_DEVICES: TCLenum = 4225;
    CONTEXT_NUM_DEVICES: TCLenum = 4227;
    QUEUE_CONTEXT: TCLenum = 4240;
    QUEUE_DEVICE: TCLenum = 4241;
    QUEUE_PROPERTIES: TCLenum = 4243;
    MEM_READ_WRITE: TCLenum = 1;
    MEM_WRITE_ONLY: TCLenum = 2;
    MEM_READ_ONLY: TCLenum = 4;
    R: TCLenum = 4272;
    A: TCLenum = 4273;
    RG: TCLenum = 4274;
    RA: TCLenum = 4275;
    RGB: TCLenum = 4276;
    RGBA: TCLenum = 4277;
    BGRA: TCLenum = 4278;
    ARGB: TCLenum = 4279;
    INTENSITY: TCLenum = 4280;
    LUMINANCE: TCLenum = 4281;
    Rx: TCLenum = 4282;
    RGx: TCLenum = 4283;
    RGBx: TCLenum = 4284;
    SNORM_INT8: TCLenum = 4304;
    SNORM_INT16: TCLenum = 4305;
    UNORM_INT8: TCLenum = 4306;
    UNORM_INT16: TCLenum = 4307;
    UNORM_SHORT_565: TCLenum = 4308;
    UNORM_SHORT_555: TCLenum = 4309;
    UNORM_INT_101010: TCLenum = 4310;
    SIGNED_INT8: TCLenum = 4311;
    SIGNED_INT16: TCLenum = 4312;
    SIGNED_INT32: TCLenum = 4313;
    UNSIGNED_INT8: TCLenum = 4314;
    UNSIGNED_INT16: TCLenum = 4315;
    UNSIGNED_INT32: TCLenum = 4316;
    HALF_FLOAT: TCLenum = 4317;
    FLOAT: TCLenum = 4318;
    MEM_OBJECT_BUFFER: TCLenum = 4336;
    MEM_OBJECT_IMAGE2D: TCLenum = 4337;
    MEM_TYPE: TCLenum = 4352;
    MEM_FLAGS: TCLenum = 4353;
    MEM_SIZE: TCLenum = 4354;
    MEM_CONTEXT: TCLenum = 4358;
    MEM_ASSOCIATED_MEMOBJECT: TCLenum = 4359;
    MEM_OFFSET: TCLenum = 4360;
    IMAGE_FORMAT: TCLenum = 4368;
    IMAGE_ELEMENT_SIZE: TCLenum = 4369;
    IMAGE_ROW_PITCH: TCLenum = 4370;
    IMAGE_WIDTH: TCLenum = 4372;
    IMAGE_HEIGHT: TCLenum = 4373;
    ADDRESS_CLAMP_TO_EDGE: TCLenum = 4401;
    ADDRESS_CLAMP: TCLenum = 4402;
    ADDRESS_REPEAT: TCLenum = 4403;
    ADDRESS_MIRRORED_REPEAT: TCLenum = 4404;
    FILTER_NEAREST: TCLenum = 4416;
    FILTER_LINEAR: TCLenum = 4417;
    SAMPLER_CONTEXT: TCLenum = 4433;
    SAMPLER_NORMALIZED_COORDS: TCLenum = 4434;
    SAMPLER_ADDRESSING_MODE: TCLenum = 4435;
    SAMPLER_FILTER_MODE: TCLenum = 4436;
    PROGRAM_CONTEXT: TCLenum = 4449;
    PROGRAM_NUM_DEVICES: TCLenum = 4450;
    PROGRAM_DEVICES: TCLenum = 4451;
    PROGRAM_SOURCE: TCLenum = 4452;
    PROGRAM_BUILD_STATUS: TCLenum = 4481;
    PROGRAM_BUILD_OPTIONS: TCLenum = 4482;
    PROGRAM_BUILD_LOG: TCLenum = 4483;
    BUILD_SUCCESS: TCLint = 0;
    BUILD_NONE: TCLint = -1;
    BUILD_ERROR: TCLint = -2;
    BUILD_IN_PROGRESS: TCLint = -3;
    KERNEL_FUNCTION_NAME: TCLenum = 4496;
    KERNEL_NUM_ARGS: TCLenum = 4497;
    KERNEL_CONTEXT: TCLenum = 4499;
    KERNEL_PROGRAM: TCLenum = 4500;
    KERNEL_WORK_GROUP_SIZE: TCLenum = 4528;
    KERNEL_COMPILE_WORK_GROUP_SIZE: TCLenum = 4529;
    KERNEL_LOCAL_MEM_SIZE: TCLenum = 4530;
    KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE: TCLenum = 4531;
    KERNEL_PRIVATE_MEM_SIZE: TCLenum = 4532;
    EVENT_COMMAND_QUEUE: TCLenum = 4560;
    EVENT_COMMAND_TYPE: TCLenum = 4561;
    EVENT_COMMAND_EXECUTION_STATUS: TCLenum = 4563;
    EVENT_CONTEXT: TCLenum = 4564;
    COMMAND_NDRANGE_KERNEL: TCLenum = 4592;
    COMMAND_TASK: TCLenum = 4593;
    COMMAND_READ_BUFFER: TCLenum = 4595;
    COMMAND_WRITE_BUFFER: TCLenum = 4596;
    COMMAND_COPY_BUFFER: TCLenum = 4597;
    COMMAND_READ_IMAGE: TCLenum = 4598;
    COMMAND_WRITE_IMAGE: TCLenum = 4599;
    COMMAND_COPY_IMAGE: TCLenum = 4600;
    COMMAND_COPY_IMAGE_TO_BUFFER: TCLenum = 4601;
    COMMAND_COPY_BUFFER_TO_IMAGE: TCLenum = 4602;
    COMMAND_MARKER: TCLenum = 4606;
    COMMAND_READ_BUFFER_RECT: TCLenum = 4609;
    COMMAND_WRITE_BUFFER_RECT: TCLenum = 4610;
    COMMAND_COPY_BUFFER_RECT: TCLenum = 4611;
    COMMAND_USER: TCLenum = 4612;
    COMPLETE: TCLenum = 0;
    RUNNING: TCLenum = 1;
    SUBMITTED: TCLenum = 2;
    QUEUED: TCLenum = 3;
    PROFILING_COMMAND_QUEUED: TCLenum = 4736;
    PROFILING_COMMAND_SUBMIT: TCLenum = 4737;
    PROFILING_COMMAND_START: TCLenum = 4738;
    PROFILING_COMMAND_END: TCLenum = 4739;
    DEVICE_PREFERRED_VECTOR_WIDTH_HALF: TCLenum = 4148;
    DEVICE_NATIVE_VECTOR_WIDTH_HALF: TCLenum = 4156;
    DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE: TCLenum = 4107;
    DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE: TCLenum = 4155;
    INVALID_GL_OBJECT: TCLenum = -60;
    INVALID_MIP_LEVEL: TCLenum = -62;
    INVALID_GL_SHAREGROUP_REFERENCE_KHR: TCLenum = -1000;
    COMMAND_ACQUIRE_GL_OBJECTS: TCLenum = 4607;
    COMMAND_RELEASE_GL_OBJECTS: TCLenum = 4608;
    GL_OBJECT_BUFFER: TCLenum = 8192;
    GL_OBJECT_TEXTURE2D: TCLenum = 8193;
    GL_OBJECT_RENDERBUFFER: TCLenum = 8195;
    GL_TEXTURE_TARGET: TCLenum = 8196;
    GL_MIPMAP_LEVEL: TCLenum = 8197;
  public
    function getPlatforms: array of JWebCLPlatform;
    function createContext: JWebCLContext; overload;
    function createContext(deviceType: TCLenum): JWebCLContext; overload;
    function createContext(platform: JWebCLPlatform): JWebCLContext; overload;
    function createContext(platform: JWebCLPlatform; deviceType: TCLenum): JWebCLContext; overload;
    function createContext(device: JWebCLDevice): JWebCLContext;
    function createContext(devices: array of JWebCLDevice): JWebCLContext;
    function getSupportedExtensions: array of String;
    function enableExtension(extensionName: String): TCLboolean;
    procedure waitForEvents(eventWaitList: array of JWebCLEvent); overload;
    procedure waitForEvents(eventWaitList: array of JWebCLEvent; whenFinished: JWebCLCallback); overload;
    procedure releaseAll;
    function createContext(gl: JWebGLRenderingContext): JWebCLContext; overload;
    function createContext(gl: JWebGLRenderingContext; deviceType: TCLenum): JWebCLContext; overload;
    function createContext(gl: JWebGLRenderingContext; platform: JWebCLPlatform): JWebCLContext; overload;
    function createContext(gl: JWebGLRenderingContext; platform: JWebCLPlatform; deviceType: TCLenum): JWebCLContext; overload;
    function createContext(gl: JWebGLRenderingContext; device: JWebCLDevice): JWebCLContext;
    function createContext(gl: JWebGLRenderingContext; devices: array of JWebCLDevice): JWebCLContext;
  end;

  JWindow = partial class external 'Window'
  public
    webcl: JWebCL;
  end;