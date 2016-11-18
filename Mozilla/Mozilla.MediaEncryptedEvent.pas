unit Mozilla.MediaEncryptedEvent;

interface

type
  // Pref=media.eme.apiVisible,Constructor( DOMString type , optional MediaKeyNeededEventInit eventInitDict)
  JMediaEncryptedEvent = class external 'MediaEncryptedEvent' (JEvent)
  public
    initDataType: String;
    initData: JArrayBuffer; { Throws } 
  end;

  JMediaKeyNeededEventInit = class external 'MediaKeyNeededEventInit' (JEventInit)
  public
    initDataType: String;
    initData: JArrayBuffer;
  end;

implementation

end.
