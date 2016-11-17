unit WHATWG.Compatibility;

interface

uses
  WHATWG.HTML;

type
  JWindow = partial class external 'Window'
  public
    orientation: Integer;
    onorientationchange: TEventHandler;
  end;

  JHTMLBodyElement = partial class external 'HTMLBodyElement'
  public
    onorientationchange: TEventHandler;
  end;

