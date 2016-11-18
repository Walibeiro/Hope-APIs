unit Mozilla.PushMessageData;

interface

type
  // Func=nsContentUtils::PushEnabled,Exposed=ServiceWorker
  JPushMessageData = class external 'PushMessageData'
  public
    function arrayBuffer: JArrayBuffer; { Throws } 
    function blob: JBlob; { Throws } 
    function json: Variant; { Throws } 
    function text: JUSVString;
  end;

implementation

end.
