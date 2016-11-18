unit Mozilla.MediaRecorder;

interface

type
  JRecordingState = (rsInactive, rsRecording, rsPaused);

  // Constructor( MediaStream stream , optional MediaRecorderOptions options),Constructor( AudioNode node , optional unsigned long output = 0 , optional MediaRecorderOptions options)
  JMediaRecorder = class external 'MediaRecorder' (JEventTarget)
  public
    stream: JMediaStream;
    state: JRecordingState;
    mimeType: String;
    ondataavailable: JEventHandler;
    onerror: JEventHandler;
    onstart: JEventHandler;
    onstop: JEventHandler;
    onwarning: JEventHandler;
    procedure start; overload; { Throws } 
    procedure start(timeSlice: Integer); overload; { Throws } 
    procedure stop; { Throws } 
    procedure pause; { Throws } 
    procedure resume; { Throws } 
    procedure requestData; { Throws } 
    function isTypeSupported(&type: String): Boolean;
  end;

  JMediaRecorderOptions = class external 'MediaRecorderOptions'
  public
    mimeType: String;
    audioBitsPerSecond: Integer;
    videoBitsPerSecond: Integer;
    bitsPerSecond: Integer;
  end;

implementation

end.
