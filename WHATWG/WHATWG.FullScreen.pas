unit WHATWG.FullScreen;

interface

uses
  WHATWG.HTML;

type
  JElement = partial class external 'Element'
  public
    procedure requestFullscreen;
  end;

  JDocument = partial class external 'Document'
  public
    fullscreenEnabled: Boolean; { LenientSetter }
    fullscreen: Boolean; { LenientSetter }
    onfullscreenchange: TEventHandler;
    onfullscreenerror: TEventHandler;
    procedure exitFullscreen;
  end;

  JDocumentOrShadowRoot = partial class external 'DocumentOrShadowRoot'
  public
    fullscreenElement: JElement; { LenientSetter }
  end;