unit Mozilla.File;

interface

type
  // Constructor( sequence < BlobPart > fileBits , USVString fileName , optional FilePropertyBag options),Constructor( Blob fileBits , optional ChromeFilePropertyBag options),Constructor( nsIFile fileBits , optional ChromeFilePropertyBag options),Constructor( USVString fileBits , optional ChromeFilePropertyBag options),Exposed=( Window , Worker)
  JFile = class external 'File' (JBlob)
  public
    name: String;
    lastModified: Integer; { GetterThrows } 
    lastModifiedDate: JDate; { GetterThrows,Deprecated=FileLastModifiedDate } 
    webkitRelativePath: JUSVString; { BinaryName=path,Func=mozilla::dom::Directory::WebkitBlinkDirectoryPickerEnabled } 
    mozFullPath: String; { GetterThrows,ChromeOnly } 
  end;

  JFilePropertyBag = class external 'FilePropertyBag'
  public
    &type: String;
    lastModified: Integer;
  end;

  JChromeFilePropertyBag = class external 'ChromeFilePropertyBag' (JFilePropertyBag)
  public
    &name: String;
    temporary: Boolean;
  end;

implementation

end.
