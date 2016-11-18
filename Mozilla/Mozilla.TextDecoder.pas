unit Mozilla.TextDecoder;

interface

type
  // Constructor( optional DOMString label = utf-8 , optional TextDecoderOptions options),Exposed=( Window , Worker , System)
  JTextDecoder = class external 'TextDecoder'
  public
    encoding: String; { Constant } 
    fatal: Boolean; { Constant } 
    function decode: JUSVString; overload; { Throws } 
    function decode(input: JBufferSource): JUSVString; overload; { Throws } 
    function decode(input: JBufferSource; options: JTextDecodeOptions): JUSVString; overload; { Throws } 
  end;

  JTextDecoderOptions = class external 'TextDecoderOptions'
  public
    fatal: Boolean;
  end;

  JTextDecodeOptions = class external 'TextDecodeOptions'
  public
    stream: Boolean;
  end;

implementation

end.
