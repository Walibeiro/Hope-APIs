unit Mozilla.HTMLVideoElement;

interface

type
  JHTMLVideoElement = class external 'HTMLVideoElement' (JHTMLMediaElement)
  public
    width: Integer; { SetterThrows } 
    height: Integer; { SetterThrows } 
    videoWidth: Integer;
    videoHeight: Integer;
    poster: String; { SetterThrows } 
    mozParsedFrames: Integer;
    mozDecodedFrames: Integer;
    mozPresentedFrames: Integer;
    mozPaintedFrames: Integer;
    mozFrameDelay: Float;
    mozHasAudio: Boolean;
    mozUseScreenWakeLock: Boolean; { Pref=dom.wakelock.enabled,Func=Navigator::HasWakeLockSupport } 
    function getVideoPlaybackQuality: JVideoPlaybackQuality; { Func=mozilla::dom::MediaSource::Enabled,NewObject } 
  end;

implementation

end.
