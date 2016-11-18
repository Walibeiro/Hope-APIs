unit Mozilla.AudioBuffer;

interface

type
  // Pref=dom.webaudio.enabled
  JAudioBuffer = class external 'AudioBuffer'
  public
    sampleRate: Float;
    length: Integer;
    duration: Float;
    numberOfChannels: Integer;
    function getChannelData(channel: Integer): JFloat32Array; { Throws } 
    procedure copyFromChannel(destination: JFloat32Array; channelNumber: Integer; startInChannel: Integer = 0); { Throws } 
    procedure copyToChannel(source: JFloat32Array; channelNumber: Integer; startInChannel: Integer = 0); { Throws } 
  end;

implementation

end.
