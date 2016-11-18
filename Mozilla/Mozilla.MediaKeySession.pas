unit Mozilla.MediaKeySession;

interface

type
  // Pref=media.eme.apiVisible
  JMediaKeySession = class external 'MediaKeySession' (JEventTarget)
  public
    error: JMediaKeyError;
    keySystem: String;
    sessionId: String;
    expiration: Float;
    closed: void;
    keyStatuses: JMediaKeyStatusMap;
    onkeystatuseschange: JEventHandler;
    onmessage: JEventHandler;
    function generateRequest(initDataType: String; initData: JBufferSource): void; { NewObject } 
    function load(sessionId: String): boolean; { NewObject } 
    function update(response: JBufferSource): void; { NewObject } 
    function close: void; { NewObject } 
    function remove: void; { NewObject } 
  end;

implementation

end.
