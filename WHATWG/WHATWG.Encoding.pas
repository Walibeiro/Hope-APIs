unit WHATWG.Encoding;

interface

type
	JTextDecoderOptions = class external 'TextDecoderOptions'
	public
		fatal: Boolean;
		ignoreBOM: Boolean;
	end;

	JTextDecodeOptions = class external 'TextDecodeOptions'
	public
		stream: Boolean;
	end;

	// Constructor( optional DOMString label = utf-8 , optional TextDecoderOptions options),Exposed=( Window , Worker)
	JTextDecoder = class external 'TextDecoder'
	public
		encoding: String;
		fatal: Boolean;
		ignoreBOM: Boolean;
		function decode: JUSVString; overload;
		function decode(input: JBufferSource): JUSVString; overload;
		function decode(input: JBufferSource; options: JTextDecodeOptions): JUSVString; overload;
	end;

	// Constructor,Exposed=( Window , Worker)
	JTextEncoder = class external 'TextEncoder'
	public
		encoding: String;
		function encode(input: JUSVString = ): JUint8Array; { NewObject } 
	end;

