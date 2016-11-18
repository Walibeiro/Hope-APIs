unit Mozilla.DataChannel;

interface

type
  JRTCDataChannelState = (connecting, open, closing, closed);

  JRTCDataChannelType = (arraybuffer, blob);

  JDataChannel = class external 'DataChannel' (JEventTarget)
  public
    label: String;
    reliable: Boolean;
    readyState: JRTCDataChannelState;
    bufferedAmount: Integer;
    bufferedAmountLowThreshold: Integer;
    onopen: JEventHandler;
    onerror: JEventHandler;
    onclose: JEventHandler;
    onmessage: JEventHandler;
    onbufferedamountlow: JEventHandler;
    binaryType: JRTCDataChannelType;
    protocol: String;
    ordered: Boolean;
    id: Integer;
    procedure close;
    procedure send(data: String); { Throws } 
    procedure send(data: JBlob); { Throws } 
    procedure send(data: JArrayBuffer); { Throws } 
    procedure send(data: JArrayBufferView); { Throws } 
  end;

implementation

end.
