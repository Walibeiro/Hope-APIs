unit Mozilla.RTCDTMFSender;

interface

type
  // JSImplementation=@mozilla.org/dom/rtcdtmfsender;1
  JRTCDTMFSender = class external 'RTCDTMFSender' (JEventTarget)
  public
    ontonechange: JEventHandler;
    toneBuffer: String;
    procedure insertDTMF(tones: String; duration: Integer = 100; interToneGap: Integer = 70);
  end;

implementation

end.
