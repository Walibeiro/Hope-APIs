unit Mozilla.AudioChannelManager;

interface

type
  JAudioChannelManager = class external 'AudioChannelManager' (JEventTarget)
  public
    headphones: Boolean;
    onheadphoneschange: JEventHandler;
    volumeControlChannel: String;
    allowedAudioChannels: array of JBrowserElementAudioChannel; { Pure,Cached,Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
  end;

implementation

end.
