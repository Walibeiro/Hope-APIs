unit Mozilla.AudioContext;

interface

type
  JDecodeSuccessCallback = procedure(decodedData: JAudioBuffer);

  JDecodeErrorCallback = procedure;

  JAudioContextState = (acsSuspended, acsRunning, acsClosed);

  JPeriodicWaveConstraints = class external 'PeriodicWaveConstraints'
  public
    disableNormalization: Boolean;
  end;

  // Constructor,Constructor( AudioChannel audioChannelType),Pref=dom.webaudio.enabled
  JAudioContext = class external 'AudioContext' (JEventTarget)
  public
    destination: JAudioDestinationNode;
    sampleRate: Float;
    currentTime: Float;
    listener: JAudioListener;
    state: JAudioContextState;
    onstatechange: JEventHandler;
    mozAudioChannelType: JAudioChannel; { Pref=media.useAudioChannelAPI } 
    onmozinterruptbegin: JEventHandler; { Pref=media.useAudioChannelAPI } 
    onmozinterruptend: JEventHandler; { Pref=media.useAudioChannelAPI } 
    function suspend: void; { Throws } 
    function resume: void; { Throws } 
    function close: void; { Throws } 
    function createBuffer(numberOfChannels: Integer; length: Integer; sampleRate: Float): JAudioBuffer; { NewObject,Throws } 
    function decodeAudioData(audioData: JArrayBuffer): AudioBuffer; overload; { Throws } 
    function decodeAudioData(audioData: JArrayBuffer; successCallback: JDecodeSuccessCallback): AudioBuffer; overload; { Throws } 
    function decodeAudioData(audioData: JArrayBuffer; successCallback: JDecodeSuccessCallback; errorCallback: JDecodeErrorCallback): AudioBuffer; overload; { Throws } 
    function createBufferSource: JAudioBufferSourceNode; { NewObject,Throws } 
    function createConstantSource: JConstantSourceNode; { NewObject,Throws } 
    function createMediaStreamDestination: JMediaStreamAudioDestinationNode; { NewObject,Throws } 
    function createScriptProcessor(bufferSize: Integer = 0; numberOfInputChannels: Integer = 2; numberOfOutputChannels: Integer = 2): JScriptProcessorNode; { NewObject,Throws } 
    function createStereoPanner: JStereoPannerNode; { NewObject,Throws } 
    function createAnalyser: JAnalyserNode; { NewObject,Throws } 
    function createMediaElementSource(mediaElement: JHTMLMediaElement): JMediaElementAudioSourceNode; { NewObject,Throws,UnsafeInPrerendering } 
    function createMediaStreamSource(mediaStream: JMediaStream): JMediaStreamAudioSourceNode; { NewObject,Throws,UnsafeInPrerendering } 
    function createGain: JGainNode; { NewObject,Throws } 
    function createDelay(maxDelayTime: Float = 1): JDelayNode; { NewObject,Throws } 
    function createBiquadFilter: JBiquadFilterNode; { NewObject,Throws } 
    function createIIRFilter(feedforward: array of Float; feedback: array of Float): JIIRFilterNode; { NewObject,Throws } 
    function createWaveShaper: JWaveShaperNode; { NewObject,Throws } 
    function createPanner: JPannerNode; { NewObject,Throws } 
    function createConvolver: JConvolverNode; { NewObject,Throws } 
    function createChannelSplitter(numberOfOutputs: Integer = 6): JChannelSplitterNode; { NewObject,Throws } 
    function createChannelMerger(numberOfInputs: Integer = 6): JChannelMergerNode; { NewObject,Throws } 
    function createDynamicsCompressor: JDynamicsCompressorNode; { NewObject,Throws } 
    function createOscillator: JOscillatorNode; { NewObject,Throws } 
    function createPeriodicWave(real: JFloat32Array; imag: JFloat32Array): JPeriodicWave; overload; { NewObject,Throws } 
    function createPeriodicWave(real: JFloat32Array; imag: JFloat32Array; constraints: JPeriodicWaveConstraints): JPeriodicWave; overload; { NewObject,Throws } 
    function testAudioChannelInAudioNodeStream: JAudioChannel; { ChromeOnly } 
  end;

implementation

end.
