unit Mozilla.BrowserElementAudioChannel;

interface

type
  // Pref=dom.mozBrowserFramesEnabled,ChromeOnly
  JBrowserElementAudioChannel = class external 'BrowserElementAudioChannel' (JEventTarget)
  public
    name: JAudioChannel;
    onactivestatechanged: JEventHandler;
    function getVolume: JDOMRequest; { Throws } 
    function setVolume(aVolume: Float): JDOMRequest; { Throws } 
    function getMuted: JDOMRequest; { Throws } 
    function setMuted(aMuted: Boolean): JDOMRequest; { Throws } 
    function isActive: JDOMRequest; { Throws } 
  end;

  JBrowserElementPrivileged = partial class external 'BrowserElementPrivileged'
  public
    allowedAudioChannels: array of JBrowserElementAudioChannel; { Pure,Cached,Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure mute; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure unmute; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function getMuted: JDOMRequest; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    procedure setVolume(volume: Float); { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
    function getVolume: JDOMRequest; { Throws,Pref=dom.mozBrowserFramesEnabled,ChromeOnly } 
  end;

implementation

end.
