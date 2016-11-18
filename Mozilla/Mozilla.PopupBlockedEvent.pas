unit Mozilla.PopupBlockedEvent;

interface

type
  // Constructor( DOMString type , optional PopupBlockedEventInit eventInitDict)
  JPopupBlockedEvent = class external 'PopupBlockedEvent' (JEvent)
  public
    requestingWindow: JWindow;
    popupWindowURI: JURI;
    popupWindowName: String;
    popupWindowFeatures: String;
  end;

  JPopupBlockedEventInit = class external 'PopupBlockedEventInit' (JEventInit)
  public
    requestingWindow: JWindow;
    popupWindowURI: JURI;
    popupWindowName: String;
    popupWindowFeatures: String;
  end;

implementation

end.
