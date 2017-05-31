unit WHATWG.Encoding;

interface

uses
  ECMA.TypedArray;

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
		function decode: String; overload;
		function decode(input: JArrayBuffer): String; overload;
		function decode(input: JArrayBufferView): String; overload;
		function decode(input: JArrayBuffer; options: JTextDecodeOptions): String; overload;
		function decode(input: JArrayBufferView; options: JTextDecodeOptions): String; overload;
	end;

	// Constructor,Exposed=( Window , Worker)
	JTextEncoder = class external 'TextEncoder'
	public
		encoding: String;
		function encode(input: String): JUint8Array; { NewObject }
	end;

