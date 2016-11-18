unit Mozilla.RTCDTMFToneChangeEvent;

interface

type
  // Constructor( DOMString type , optional RTCDTMFToneChangeEventInit eventInitDict)
  JRTCDTMFToneChangeEvent = class external 'RTCDTMFToneChangeEvent' (JEvent)
  public
    tone: String;
  end;

  JRTCDTMFToneChangeEventInit = class external 'RTCDTMFToneChangeEventInit' (JEventInit)
  public
    tone: String;
  end;

implementation

end.
