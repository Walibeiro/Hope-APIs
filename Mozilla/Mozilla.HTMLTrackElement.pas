unit Mozilla.HTMLTrackElement;

interface

type
  JHTMLTrackElement = class external 'HTMLTrackElement' (JHTMLElement)
  const 
    NONE: Integer = 0;
    LOADING: Integer = 1;
    LOADED: Integer = 2;
    ERROR: Integer = 3;
  public
    kind: String; { SetterThrows,Pure } 
    src: String; { SetterThrows,Pure } 
    srclang: String; { SetterThrows,Pure } 
    label: String; { SetterThrows,Pure } 
    default: Boolean; { SetterThrows,Pure } 
    readyState: Integer;
    track: JTextTrack;
  end;

implementation

end.
