unit W3C.Clipboard;

interface

uses
  W3C.DOM4, W3C.HTML5;

type
  JClipboardEventInit = class external 'ClipboardEventInit' (JEventInit)
  public
    clipboardData: JDataTransfer;
  end;

  JClipboardEvent = class external 'ClipboardEvent' (JEvent)
  public
    clipboardData: JDataTransfer;
    constructor Create(&type: String); overload;
    constructor Create(&type: String; eventInitDict: JClipboardEventInit); overload;
  end;