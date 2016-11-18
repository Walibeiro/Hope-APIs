unit Mozilla.VideoPlaybackQuality;

interface

type
  // Func=mozilla::dom::MediaSource::Enabled
  JVideoPlaybackQuality = class external 'VideoPlaybackQuality'
  public
    creationTime: JDOMHighResTimeStamp;
    totalVideoFrames: Integer;
    droppedVideoFrames: Integer;
    corruptedVideoFrames: Integer;
  end;

implementation

end.
