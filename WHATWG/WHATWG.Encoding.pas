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

	// Exposed = (Window, Worker)
	JTextDecoder = class external 'TextDecoder'
	public
		encoding: String;
		fatal: Boolean;
		ignoreBOM: Boolean;
    constructor Create; overload;
    constructor Create(Options: JTextDecoderOptions); overload;
    constructor Create(Label: String); overload;
    constructor Create(Label: String; Options: JTextDecoderOptions); overload;
		function decode: String; overload;
		function decode(input: JArrayBuffer): String; overload;
		function decode(input: JArrayBufferView): String; overload;
		function decode(input: JArrayBuffer; options: JTextDecodeOptions): String; overload;
		function decode(input: JArrayBufferView; options: JTextDecodeOptions): String; overload;
	end;

	// Exposed = (Window, Worker)
	JTextEncoder = class external 'TextEncoder'
	public
		encoding: String;
    constructor Create;
		function encode(input: String): JUint8Array; { NewObject }
	end;

