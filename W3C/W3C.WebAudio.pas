unit W3C.WebAudio;

interface

uses
  ECMA.TypedArray, W3C.DOM4, W3C.Html5, W3C.MediaCaptureAndStreams,
  W3C.WebWorkers, W3C.WebMessaging;

type
  JAudioContextState = String;
  JAudioContextStateHelper = strict helper for JAudioContextState
    const Suspended = 'suspended';
    const Running = 'running';
    const Closed = 'closed';
  end;

  JAudioContextPlaybackCategory = String;
  JAudioContextPlaybackCategoryHelper = strict helper for JAudioContextPlaybackCategory
    const Balanced = 'balanced';
    const Interactive = 'interactive';
    const Playback = 'playback';
  end;

  JPanningModelType = String;
  JPanningModelTypeHelper = strict helper for JPanningModelType
    const Equalpower = 'equalpower';
    const HRTF = 'HRTF';
  end;

  JDistanceModelType = String;
  JDistanceModelTypeHelper = strict helper for JDistanceModelType
    const Linear = 'linear';
    const Inverse = 'inverse';
    const Exponential = 'exponential';
  end;

  JOverSampleType = String;
  JOverSampleTypeHelper = strict helper for JOverSampleType
    const None = 'none';
    const TwoTimes = '2x';
    const FourTimes = '4x';
  end;

  JOscillatorType = String;
  JOscillatorTypeHelper = strict helper for JOscillatorType
    const Sine = 'sine';
    const Square = 'square';
    const Sawtooth = 'sawtooth';
    const Triangle = 'triangle';
    const Custom = 'custom';
  end;

  JChannelCountMode = String;
  JChannelCountModeHelper = strict helper for JChannelCountMode
    const Max = 'max';
    const ClampedMax = 'clamped-max';
    const Explicit = 'explicit';
  end;

  JChannelInterpretation = String;
  JChannelInterpretationHelper = strict helper for JChannelInterpretation
    const Speakers = 'speakers';
    const Discrete = 'discrete';
  end;

  JAudioContextOptions = class external 'AudioContextOptions'
  public
    playbackCategory: JAudioContextPlaybackCategory;
  end;

  JDOMException = Variant;

  JAudioBuffer = class external 'AudioBuffer'
  public
    sampleRate: Float;
    length: Integer;
    duration: Float;
    numberOfChannels: Integer;
    function getChannelData(channel: Integer): JFloat32Array;
    procedure copyFromChannel(destination: JFloat32Array; channelNumber: Integer; startInChannel: Integer = 0);
    procedure copyToChannel(source: JFloat32Array; channelNumber: Integer; startInChannel: Integer = 0);
  end;

  TDecodeErrorCallback = procedure(error: JDOMException);
  TDecodeSuccessCallback = procedure(decodedData: JAudioBuffer);

  JOfflineAudioCompletionEvent = class external 'OfflineAudioCompletionEvent' (JEvent)
  public
    renderedBuffer: JAudioBuffer;
  end;

  JBaseAudioContext = partial class external 'BaseAudioContext' (JEventTarget)
  public
    sampleRate: Float;
    currentTime: Float;
    state: JAudioContextState;
    onstatechange: TEventHandler;
  end;

  JAudioContext = partial class external 'AudioContext' (JBaseAudioContext)
  public
    constructor Create;
  end;

  JAudioParam = class external 'AudioParam'
  public
    value: Float;
    defaultValue: Float;
    function setValueAtTime(value: Float; startTime: Float): JAudioParam;
    function linearRampToValueAtTime(value: Float; endTime: Float): JAudioParam;
    function exponentialRampToValueAtTime(value: Float; endTime: Float): JAudioParam;
    function setTargetAtTime(target: Float; startTime: Float; timeConstant: Float): JAudioParam;
    function setValueCurveAtTime(values: JFloat32Array; startTime: Float; duration: Float): JAudioParam;
    function cancelScheduledValues(startTime: Float): JAudioParam;
  end;

  JAudioNode = class external 'AudioNode' (JEventTarget)
  public
    context: JAudioContext;
    numberOfInputs: Integer;
    numberOfOutputs: Integer;
    channelCount: Integer;
    channelCountMode: JChannelCountMode;
    channelInterpretation: JChannelInterpretation;
    function connect(destination: JAudioNode; output: Integer = 0; input: Integer = 0): JAudioNode; overload;
    procedure connect(destination: JAudioParam; output: Integer = 0); overload;
    procedure disconnect; overload;
    procedure disconnect(output: Integer); overload;
    procedure disconnect(destination: JAudioNode); overload;
    procedure disconnect(destination: JAudioNode; output: Integer); overload;
    procedure disconnect(destination: JAudioNode; output: Integer; input: Integer); overload;
    procedure disconnect(destination: JAudioParam); overload;
    procedure disconnect(destination: JAudioParam; output: Integer); overload;
  end;

  JAudioDestinationNode = class external 'AudioDestinationNode' (JAudioNode)
  public
    maxChannelCount: Integer;
  end;

  JGainNode = class external 'GainNode' (JAudioNode)
  public
    gain: JAudioParam;
  end;

  JDelayNode = class external 'DelayNode' (JAudioNode)
  public
    delayTime: JAudioParam;
  end;

  JAudioBufferSourceNode = class external 'AudioBufferSourceNode' (JAudioNode)
  public
    buffer: JAudioBuffer;
    playbackRate: JAudioParam;
    detune: JAudioParam;
    loop: Boolean;
    loopStart: Float;
    loopEnd: Float;
    onended: TEventHandler;
    procedure start; overload;
    procedure start(when: Float); overload;
    procedure start(when, offset: Float); overload;
    procedure start(when, offset, duration: Float); overload;
    procedure stop(when: Float = 0);
  end;

  JMediaElementAudioSourceNode = class external 'MediaElementAudioSourceNode' (JAudioNode)
  end;

  JAudioWorkerParamDescriptor = class external 'AudioWorkerParamDescriptor'
  public
    name: String;
    defaultValue: Float;
  end;

  JAudioWorkerNode = class external 'AudioWorkerNode' (JAudioNode)
  public
    onmessage: TEventHandler;
    procedure postMessage(message: Variant); overload;
    procedure postMessage(message: Variant; transfer: array of JArrayBuffer); overload;
    procedure postMessage(message: Variant; transfer: array of JMessagePort); overload;
  end;

  JAudioWorker = class external 'AudioWorker' (JWorker)
  public
    parameters: array of JAudioWorkerParamDescriptor;
    onmessage: TEventHandler;
    onloaded: TEventHandler;
    procedure terminate;
    procedure postMessage(message: Variant); overload;
    procedure postMessage(message: Variant; transfer: array of JArrayBuffer); overload;
    procedure postMessage(message: Variant; transfer: array of JMessagePort); overload;
    function createNode(numberOfInputs: Integer; numberOfOutputs: Integer): JAudioWorkerNode;
    function addParameter(&name: String; defaultValue: Float): JAudioParam;
    procedure removeParameter(&name: String);
  end;

  JAudioWorkerGlobalScope = class external 'AudioWorkerGlobalScope' (JDedicatedWorkerGlobalScope)
  public
    sampleRate: Float;
    onaudioprocess: TEventHandler;
    onnodecreate: TEventHandler;
    parameters: array of JAudioWorkerParamDescriptor;
    function addParameter(&name: String; defaultValue: Float): JAudioParam;
    procedure removeParameter(&name: String);
  end;

  JAudioWorkerNodeProcessor = class external 'AudioWorkerNodeProcessor' (JEventTarget)
  public
    onmessage: TEventHandler;
    procedure postMessage(message: Variant); overload;
    procedure postMessage(message: Variant; transfer: array of JArrayBuffer); overload;
    procedure postMessage(message: Variant; transfer: array of JMessagePort); overload;
  end;

  JScriptProcessorNode = class external 'ScriptProcessorNode' (JAudioNode)
  public
    onaudioprocess: TEventHandler;
    bufferSize: Integer;
  end;

  JAudioWorkerNodeCreationEvent = class external 'AudioWorkerNodeCreationEvent' (JEvent)
  public
    node: JAudioWorkerNodeProcessor;
// TODO    inputs: JArray;
// TODO    outputs: JArray;
  end;

  JAudioProcessEvent = class external 'AudioProcessEvent' (JEvent)
  public
    playbackTime: Float;
    node: JAudioWorkerNodeProcessor;
    inputs: array of array of JFloat32Array;
    outputs: array of array of JFloat32Array;
    parameters: Variant;
  end;

  JAudioProcessingEvent = class external 'AudioProcessingEvent' (JEvent)
  public
    playbackTime: Float;
    inputBuffer: JAudioBuffer;
    outputBuffer: JAudioBuffer;
  end;

  JPannerNode = class external 'PannerNode' (JAudioNode)
  public
    panningModel: JPanningModelType;
    distanceModel: JDistanceModelType;
    refDistance: Float;
    maxDistance: Float;
    rolloffFactor: Float;
    coneInnerAngle: Float;
    coneOuterAngle: Float;
    coneOuterGain: Float;
    procedure setPosition(x: Float; y: Float; z: Float);
    procedure setOrientation(x: Float; y: Float; z: Float);
    procedure setVelocity(x: Float; y: Float; z: Float);
  end;

  JAudioListener = class external 'AudioListener'
  public
    procedure setPosition(x: Float; y: Float; z: Float);
    procedure setOrientation(x: Float; y: Float; z: Float; xUp: Float; yUp: Float; zUp: Float);
  end;

  JSpatialPannerNode = class external 'SpatialPannerNode' (JAudioNode)
  public
    panningModel: JPanningModelType;
    positionX: JAudioParam;
    positionY: JAudioParam;
    positionZ: JAudioParam;
    orientationX: JAudioParam;
    orientationY: JAudioParam;
    orientationZ: JAudioParam;
    distanceModel: JDistanceModelType;
    refDistance: Float;
    maxDistance: Float;
    rolloffFactor: Float;
    coneInnerAngle: Float;
    coneOuterAngle: Float;
    coneOuterGain: Float;
  end;

  JSpatialListener = class external 'SpatialListener'
  public
    positionX: JAudioParam;
    positionY: JAudioParam;
    positionZ: JAudioParam;
    forwardX: JAudioParam;
    forwardY: JAudioParam;
    forwardZ: JAudioParam;
    upX: JAudioParam;
    upY: JAudioParam;
    upZ: JAudioParam;
  end;

  JStereoPannerNode = class external 'StereoPannerNode' (JAudioNode)
  public
    pan: JAudioParam;
  end;

  JConvolverNode = class external 'ConvolverNode' (JAudioNode)
  public
    buffer: JAudioBuffer;
    normalize: Boolean;
  end;

  JAnalyserNode = class external 'AnalyserNode' (JAudioNode)
  public
    fftSize: Integer;
    frequencyBinCount: Integer;
    minDecibels: Float;
    maxDecibels: Float;
    smoothingTimeConstant: Float;
    procedure getFloatFrequencyData(&array: JFloat32Array);
    procedure getByteFrequencyData(&array: JUint8Array);
    procedure getFloatTimeDomainData(&array: JFloat32Array);
    procedure getByteTimeDomainData(&array: JUint8Array);
  end;

  JChannelSplitterNode = class external 'ChannelSplitterNode' (JAudioNode);

  JChannelMergerNode = class external 'ChannelMergerNode' (JAudioNode);

  JDynamicsCompressorNode = class external 'DynamicsCompressorNode' (JAudioNode)
  public
    threshold: JAudioParam;
    knee: JAudioParam;
    ratio: JAudioParam;
    reduction: Float;
    attack: JAudioParam;
    release: JAudioParam;
  end;

  JBiquadFilterType = String;
  JBiquadFilterTypeHelper = strict helper for JBiquadFilterType
    const Lowpass = 'lowpass';
    const Highpass = 'highpass';
    const Bandpass = 'bandpass';
    const Lowshelf = 'lowshelf';
    const Highshelf = 'highshelf';
    const Peaking = 'peaking';
    const Notch = 'notch';
    const Allpass = 'allpass';
  end;

  JBiquadFilterNode = class external 'BiquadFilterNode' (JAudioNode)
  public
    &type: JBiquadFilterType;
    frequency: JAudioParam;
    detune: JAudioParam;
    Q: JAudioParam;
    gain: JAudioParam;
    procedure getFrequencyResponse(frequencyHz: JFloat32Array; magResponse: JFloat32Array; phaseResponse: JFloat32Array);
  end;

  JIIRFilterNode = class external 'IIRFilterNode' (JAudioNode)
  public
    procedure getFrequencyResponse(frequencyHz: JFloat32Array; magResponse: JFloat32Array; phaseResponse: JFloat32Array);
  end;

  JWaveShaperNode = class external 'WaveShaperNode' (JAudioNode)
  public
    curve: JFloat32Array;
    oversample: JOverSampleType;
  end;

  JPeriodicWave = class external 'PeriodicWave'
  end;

  JPeriodicWaveConstraints = class external 'PeriodicWaveConstraints'
  public
    disableNormalization: Boolean;
  end;

  JOscillatorNode = class external 'OscillatorNode' (JAudioNode)
  public
    &type: JOscillatorType;
    frequency: JAudioParam;
    detune: JAudioParam;
    onended: TEventHandler;
    procedure start(when: Float = 0);
    procedure stop(when: Float = 0);
    procedure setPeriodicWave(periodicWave: JPeriodicWave);
  end;

  JMediaStreamAudioSourceNode = class external 'MediaStreamAudioSourceNode' (JAudioNode)
  end;

  JMediaStreamAudioDestinationNode = class external 'MediaStreamAudioDestinationNode' (JAudioNode)
  public
    stream: JMediaStream;
  end;

  JBaseAudioContext = class external 'BaseAudioContext' (JEventTarget)
  public
    destination: JAudioDestinationNode;
    listener: JAudioListener;
    constructor Create; overload;
    constructor Create(contextOptions: JAudioContextOptions); overload;
    procedure suspend;
    procedure resume;
    procedure close;
    function createBuffer(numberOfChannels, bufferLength: Integer; sampleRate: Float): JAudioBuffer;
    function decodeAudioData(audioData: JArrayBuffer): JAudioBuffer; overload;
    function decodeAudioData(audioData: JArrayBuffer; successCallback: TDecodeSuccessCallback): JAudioBuffer; overload;
    function decodeAudioData(audioData: JArrayBuffer; successCallback: TDecodeSuccessCallback; errorCallback: TDecodeErrorCallback): JAudioBuffer; overload;
    function createBufferSource: JAudioBufferSourceNode;
    function createAudioWorker(scriptURL: String): JAudioWorker;
    function createScriptProcessor(bufferSize: Integer = 0; numberOfInputChannels: Integer = 2; numberOfOutputChannels: Integer = 2): JScriptProcessorNode;
    function createAnalyser: JAnalyserNode;
    function createGain: JGainNode;
    function createDelay(maxDelayTime: Float = 1): JDelayNode;
    function createBiquadFilter: JBiquadFilterNode;
    function createIIRFilter(feedforward: array of Float; feedback: array of Float): JIIRFilterNode;
    function createWaveShaper: JWaveShaperNode;
    function createPanner: JPannerNode;
    function createSpatialPanner: JSpatialPannerNode;
    function createStereoPanner: JStereoPannerNode;
    function createConvolver: JConvolverNode;
    function createChannelSplitter(numberOfOutputs: Integer = 6): JChannelSplitterNode;
    function createChannelMerger(numberOfInputs: Integer = 6): JChannelMergerNode;
    function createDynamicsCompressor: JDynamicsCompressorNode;
    function createOscillator: JOscillatorNode;
    function createPeriodicWave(real: JFloat32Array; imag: JFloat32Array): JPeriodicWave; overload;
    function createPeriodicWave(real: JFloat32Array; imag: JFloat32Array; constraints: JPeriodicWaveConstraints): JPeriodicWave; overload;
  end;

  JAudioContext = class external 'AudioContext' (JBaseAudioContext)
  public
    function createMediaElementSource(mediaElement: JHTMLMediaElement): JMediaElementAudioSourceNode;
    function createMediaStreamSource(mediaStream: JMediaStream): JMediaStreamAudioSourceNode;
    function createMediaStreamDestination: JMediaStreamAudioDestinationNode;
  end;

  JOfflineAudioContext = class external 'OfflineAudioContext' (JBaseAudioContext)
  public
    oncomplete: TEventHandler;
    constructor Create(numberOfChannels: Integer; BufferLength: Integer; sampleRate: Float);
    function startRendering: JAudioBuffer;
    procedure resume;
    procedure suspend(suspendTime: Float);
  end;