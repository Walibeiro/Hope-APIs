unit Mozilla.MediaError;

interface

type
  JMediaError = class external 'MediaError'
  const 
    MEDIA_ERR_ABORTED: Integer = 1;
    MEDIA_ERR_NETWORK: Integer = 2;
    MEDIA_ERR_DECODE: Integer = 3;
    MEDIA_ERR_SRC_NOT_SUPPORTED: Integer = 4;
  public
    code: Integer; { Constant } 
    message: String; { Pref=dom.MediaError.message.enabled } 
  end;

implementation

end.
