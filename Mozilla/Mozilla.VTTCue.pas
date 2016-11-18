unit Mozilla.VTTCue;

interface

type
  JAutoKeyword = (akAuto);

  JLineAlignSetting = (lasStart, lasCenter, lasEnd);

  JPositionAlignSetting = (pasLine-left, pasCenter, pasLine-right, pasAuto);

  JAlignSetting = (asStart, asCenter, asEnd, asLeft, asRight);

  JDirectionSetting = (, dsRl, dsLr);

  // Constructor( double startTime , double endTime , DOMString text)
  JVTTCue = class external 'VTTCue' (JTextTrackCue)
  public
    region: JVTTRegion; { Pref=media.webvtt.regions.enabled } 
    vertical: JDirectionSetting;
    snapToLines: Boolean;
    line: Union;
    lineAlign: JLineAlignSetting; { SetterThrows } 
    position: Union; { SetterThrows } 
    positionAlign: JPositionAlignSetting; { SetterThrows } 
    size: Float; { SetterThrows } 
    align: JAlignSetting;
    text: String;
    displayState: JHTMLDivElement; { ChromeOnly } 
    hasBeenReset: Boolean; { ChromeOnly } 
    computedLine: Float; { ChromeOnly } 
    computedPosition: Float; { ChromeOnly } 
    computedPositionAlign: JPositionAlignSetting; { ChromeOnly } 
    function getCueAsHTML: JDocumentFragment;
  end;

implementation

end.
