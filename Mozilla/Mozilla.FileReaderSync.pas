unit Mozilla.FileReaderSync;

interface

type
  // Constructor,Exposed=Worker
  JFileReaderSync = class external 'FileReaderSync'
  public
    function readAsArrayBuffer(blob: JBlob): JArrayBuffer; { Throws } 
    function readAsBinaryString(blob: JBlob): String; { Throws } 
    function readAsText(blob: JBlob): String; overload; { Throws } 
    function readAsText(blob: JBlob; encoding: String): String; overload; { Throws } 
    function readAsDataURL(blob: JBlob): String; { Throws } 
  end;

implementation

end.
