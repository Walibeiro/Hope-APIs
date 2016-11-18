unit Mozilla.FileReader;

interface

type
  // Constructor,Exposed=( Window , Worker , System)
  JFileReader = class external 'FileReader' (JEventTarget)
  const 
    &EMPTY: Integer = 0;
    LOADING: Integer = 1;
    DONE: Integer = 2;
  public
    readyState: Integer;
    result: Variant; { Throws } 
    error: JDOMError;
    onloadstart: JEventHandler;
    onprogress: JEventHandler;
    onload: JEventHandler;
    onabort: JEventHandler;
    onerror: JEventHandler;
    onloadend: JEventHandler;
    procedure readAsArrayBuffer(blob: JBlob); { Throws } 
    procedure readAsText(blob: JBlob; label: String = ); { Throws } 
    procedure readAsDataURL(blob: JBlob); { Throws } 
    procedure abort; { Throws } 
    procedure readAsBinaryString(filedata: JBlob); { Throws } 
  end;

implementation

end.
