unit Mozilla.Fetch;

interface

type
  TJSON = Variant;
  TBodyInit = Union;
  // NoInterfaceObject,Exposed=( Window , Worker)
  JBody = class external 'Body'
  public
    bodyUsed: Boolean;
    function arrayBuffer: ArrayBuffer; { Throws } 
    function blob: Blob; { Throws } 
    function formData: FormData; { Throws } 
    function json: JSON; { Throws } 
    function text: USVString; { Throws } 
  end;

implementation

end.
