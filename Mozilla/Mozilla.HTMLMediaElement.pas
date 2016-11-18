unit Mozilla.HTMLMediaElement;

interface

type
  JHTMLMediaElement = class external 'HTMLMediaElement' (JHTMLElement)
  const 
    NETWORK_EMPTY: Integer = 0;
    NETWORK_IDLE: Integer = 1;
    NETWORK_LOADING: Integer = 2;
    NETWORK_NO_SOURCE: Integer = 3;
    HAVE_NOTHING: Integer = 0;
    HAVE_METADATA: Integer = 1;
    HAVE_CURRENT_DATA: Integer = 2;
    HAVE_FUTURE_DATA: Integer = 3;
    HAVE_ENOUGH_DATA: Integer = 4;
  public
    error: JMediaError;
    src: String; { SetterThrows } 
    currentSrc: String;
    crossOrigin: String; { SetterThrows } 
    networkState: Integer;
    preload: String; { SetterThrows } 
    buffered: JTimeRanges; { NewObject } 
    readyState: Integer;
    seeking: Boolean;
    currentTime: Float; { SetterThrows } 
    duration: Float;
    isEncrypted: Boolean; { ChromeOnly } 
    paused: Boolean;
    defaultPlaybackRate: Float; { SetterThrows } 
    playbackRate: Float; { SetterThrows } 
    played: JTimeRanges; { NewObject } 
    seekable: JTimeRanges; { NewObject } 
    ended: Boolean;
    autoplay: Boolean; { SetterThrows } 
    loop: Boolean; { SetterThrows } 
    controls: Boolean; { SetterThrows } 
    volume: Float; { SetterThrows } 
    muted: Boolean;
    defaultMuted: Boolean; { SetterThrows } 
    audioTracks: JAudioTrackList; { Pref=media.track.enabled } 
    videoTracks: JVideoTrackList; { Pref=media.track.enabled } 
    textTracks: JTextTrackList;
    mozMediaSourceObject: JMediaSource; { ChromeOnly } 
    mozDebugReaderData: String; { ChromeOnly } 
    srcObject: JMediaStream;
    mozSrcObject: JMediaStream;
    mozPreservesPitch: Boolean;
    mozAutoplayEnabled: Boolean;
    mozAllowCasting: Boolean; { Func=IsChromeOrXBL } 
    mozIsCasting: Boolean; { Func=IsChromeOrXBL } 
    mozAudioCaptured: Boolean;
    mozFragmentEnd: Float;
    mozAudioChannelType: JAudioChannel; { SetterThrows,Pref=media.useAudioChannelAPI } 
    onmozinterruptbegin: JEventHandler; { Pref=media.useAudioChannelAPI } 
    onmozinterruptend: JEventHandler; { Pref=media.useAudioChannelAPI } 
    mediaKeys: JMediaKeys; { Pref=media.eme.apiVisible } 
    onencrypted: JEventHandler; { Pref=media.eme.apiVisible } 
    onwaitingforkey: JEventHandler; { Pref=media.eme.apiVisible } 
    computedVolume: Float; { Pref=media.useAudioChannelService.testing } 
    computedMuted: Boolean; { Pref=media.useAudioChannelService.testing } 
    computedSuspended: Integer; { Pref=media.useAudioChannelService.testing } 
    procedure load;
    function canPlayType(&type: String): String;
    procedure fastSeek(time: Float); { Throws } 
    procedure play; { Throws } 
    procedure pause; { Throws } 
    function addTextTrack(kind: JTextTrackKind; label: String = ; language: String = ): JTextTrack;
    procedure mozDumpDebugInfo; { Pref=media.test.dumpDebugInfo } 
    function mozCaptureStream: JMediaStream; { Throws,UnsafeInPrerendering } 
    function mozCaptureStreamUntilEnded: JMediaStream; { Throws,UnsafeInPrerendering } 
    function mozGetMetadata: Variant; { Throws } 
    function setMediaKeys(mediaKeys: JMediaKeys): void; { Pref=media.eme.apiVisible,NewObject } 
    function seekToNextFrame: void; { Throws,Pref=media.seekToNextFrame.enabled } 
    procedure setVisible(aVisible: Boolean); { Pref=media.test.setVisible } 
  end;

implementation

end.
