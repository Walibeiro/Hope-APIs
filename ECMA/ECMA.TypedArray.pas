unit ECMA.TypedArray;

interface

type
	JArrayBuffer = class external 'ArrayBuffer'
	public
		byteLength: Integer;
	  constructor Create(ByteLength: Integer);
		function slice(&begin: Integer): JArrayBuffer; overload;
		function slice(&begin: Integer; &end: Integer): JArrayBuffer; overload;
		function isView(value: Variant): Boolean;
	end;

	// NoInterfaceObject
	JArrayBufferView = class external 'ArrayBufferView'
	public
		buffer: JArrayBuffer;
		byteOffset: Integer;
		byteLength: Integer;
	end;

	JInt8Array = class external 'Int8Array' (JArrayBufferView)
	const 
		BYTES_PER_ELEMENT: Integer = 1;
	public
		length: Integer;
	  constructor Create(ByteLength: Integer); overload;
	  constructor Create(&array: JInt8Array); overload;
	  constructor Create(&array: array of Integer); overload;
	  constructor Create(buffer: JArrayBuffer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset: Integer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset, byteLength: Integer); overload;
		function get(&index: Integer): Integer;
		procedure set(&index: Integer; value: Integer);
		procedure set(&array: JInt8Array); overload;
		procedure set(&array: JInt8Array; offset: Integer); overload;
		procedure set(&array: array of Integer); overload;
		procedure set(&array: array of Integer; offset: Integer); overload;
		function subarray(start: Integer; &end: Integer): JInt8Array;
	end;

	JUint8Array = class external 'Uint8Array' (JArrayBufferView)
	const 
		BYTES_PER_ELEMENT: Integer = 1;
  private
		function GetItem(index: Integer): Integer; external array;
		procedure SetItem(index: Integer; value: Integer); external array;
	public
		length: Integer;
	  constructor Create(ByteLength: Integer); overload;
	  constructor Create(&array: JUint8Array); overload;
	  constructor Create(&array: array of Integer); overload;
	  constructor Create(buffer: JArrayBuffer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset: Integer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset, byteLength: Integer); overload;
		function get(&index: Integer): Integer;
		procedure set(&index: Integer; value: Integer);
		procedure set(&array: JUint8Array); overload;
		procedure set(&array: JUint8Array; offset: Integer); overload;
		procedure set(&array: array of Integer); overload;
		procedure set(&array: array of Integer; offset: Integer); overload;
		function subarray(start: Integer; &end: Integer): JUint8Array;

	  property Items[index: Integer]: Integer read GetItem write SetItem; default;
	end;

	JUint8ClampedArray = class external 'Uint8ClampedArray' (JArrayBufferView)
	const 
		BYTES_PER_ELEMENT: Integer = 1;
  private
		function GetItem(index: Integer): Integer; external array;
		procedure SetItem(index: Integer; value: Integer); external array;
	public
		length: Integer;
	  constructor Create(ByteLength: Integer); overload;
	  constructor Create(&array: JUint8ClampedArray); overload;
	  constructor Create(&array: array of Integer); overload;
	  constructor Create(buffer: JArrayBuffer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset: Integer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset, byteLength: Integer); overload;
		function get(&index: Integer): Integer;
		procedure set(&index: Integer; value: Integer { Clamp } );
		procedure set(&array: JUint8ClampedArray); overload;
		procedure set(&array: JUint8ClampedArray; offset: Integer); overload;
		procedure set(&array: array of Integer); overload;
		procedure set(&array: array of Integer; offset: Integer); overload;
		function subarray(start: Integer; &end: Integer): JUint8ClampedArray;

	  property Items[index: Integer]: Integer read GetItem write SetItem; default;
	end;

	JInt16Array = class external 'Int16Array' (JArrayBufferView)
	const 
		BYTES_PER_ELEMENT: Integer = 2;
	public
		length: Integer;
	  constructor Create(ByteLength: Integer); overload;
	  constructor Create(&array: JInt16Array); overload;
	  constructor Create(&array: array of Integer); overload;
	  constructor Create(buffer: JArrayBuffer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset: Integer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset, byteLength: Integer); overload;
		function get(&index: Integer): Integer;
		procedure set(&index: Integer; value: Integer);
		procedure set(&array: JInt16Array); overload;
		procedure set(&array: JInt16Array; offset: Integer); overload;
		procedure set(&array: array of Integer); overload;
		procedure set(&array: array of Integer; offset: Integer); overload;
		function subarray(start: Integer; &end: Integer): JInt16Array;
	end;

	JUint16Array = class external 'Uint16Array' (JArrayBufferView)
	const 
		BYTES_PER_ELEMENT: Integer = 2;
	public
		length: Integer;
	  constructor Create(ByteLength: Integer); overload;
	  constructor Create(&array: JUint16Array); overload;
	  constructor Create(&array: array of Integer); overload;
	  constructor Create(buffer: JArrayBuffer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset: Integer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset, byteLength: Integer); overload;
		function get(&index: Integer): Integer;
		procedure set(&index: Integer; value: Integer);
		procedure set(&array: JUint16Array); overload;
		procedure set(&array: JUint16Array; offset: Integer); overload;
		procedure set(&array: array of Integer); overload;
		procedure set(&array: array of Integer; offset: Integer); overload;
		function subarray(start: Integer; &end: Integer): JUint16Array;
	end;

	JInt32Array = class external 'Int32Array' (JArrayBufferView)
	const 
		BYTES_PER_ELEMENT: Integer = 4;
	public
		length: Integer;
	  constructor Create(ByteLength: Integer); overload;
	  constructor Create(&array: JInt32Array); overload;
	  constructor Create(&array: array of Integer); overload;
	  constructor Create(buffer: JArrayBuffer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset: Integer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset, byteLength: Integer); overload;
		function get(&index: Integer): Integer;
		procedure set(&index: Integer; value: Integer);
		procedure set(&array: JInt32Array); overload;
		procedure set(&array: JInt32Array; offset: Integer); overload;
		procedure set(&array: array of Integer); overload;
		procedure set(&array: array of Integer; offset: Integer); overload;
		function subarray(start: Integer; &end: Integer): JInt32Array;
	end;

	JUint32Array = class external 'Uint32Array' (JArrayBufferView)
	const 
		BYTES_PER_ELEMENT: Integer = 4;
	public
		length: Integer;
	  constructor Create(ByteLength: Integer); overload;
	  constructor Create(&array: JUint32Array); overload;
	  constructor Create(&array: array of Integer); overload;
	  constructor Create(buffer: JArrayBuffer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset: Integer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset, byteLength: Integer); overload;
		function get(&index: Integer): Integer;
		procedure set(&index: Integer; value: Integer);
		procedure set(&array: JUint32Array); overload;
		procedure set(&array: JUint32Array; offset: Integer); overload;
		procedure set(&array: array of Integer); overload;
		procedure set(&array: array of Integer; offset: Integer); overload;
		function subarray(start: Integer; &end: Integer): JUint32Array;
	end;

	JFloat32Array = class external 'Float32Array' (JArrayBufferView)
	const 
		BYTES_PER_ELEMENT: Integer = 4;
  private
		function GetItem(index: Integer): Float; external array;
		procedure SetItem(index: Integer; value: Float); external array;
	public
		length: Integer;
	  constructor Create(ByteLength: Integer); overload;
	  constructor Create(&array: JFloat32Array); overload;
	  constructor Create(&array: array of Float); overload;
	  constructor Create(buffer: JArrayBuffer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset: Integer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset, byteLength: Integer); overload;
		function get(index: Integer): Float;
		procedure set(index: Integer; value: Float);
		procedure set(&array: JFloat32Array); overload;
		procedure set(&array: JFloat32Array; offset: Integer); overload;
		procedure set(&array: array of Float); overload;
		procedure set(&array: array of Float; offset: Integer); overload;
		function subarray(start: Integer; &end: Integer): JFloat32Array;

	  property Items[index: Integer]: Float read GetItem write SetItem; default;
  end;

	JFloat64Array = class external 'Float64Array' (JArrayBufferView)
	const 
		BYTES_PER_ELEMENT: Integer = 8;
  private
		function GetItem(index: Integer): Float; external array;
		procedure SetItem(index: Integer; value: Float); external array;
	public
		length: Integer;
	  constructor Create(ByteLength: Integer); overload;
	  constructor Create(&array: JFloat64Array); overload;
	  constructor Create(&array: array of Float); overload;
	  constructor Create(buffer: JArrayBuffer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset: Integer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset, byteLength: Integer); overload;
		function get(&index: Integer): Float;
		procedure set(&index: Integer; value: Float);
		procedure set(&array: JFloat64Array); overload;
		procedure set(&array: JFloat64Array; offset: Integer); overload;
		procedure set(&array: array of Float); overload;
		procedure set(&array: array of Float; offset: Integer); overload;
		function subarray(start: Integer; &end: Integer): JFloat64Array;

	  property Items[index: Integer]: Float read GetItem write SetItem; default;
	end;

	JDataView = class external 'DataView' (JArrayBufferView)
	public
	  constructor Create(buffer: JArrayBuffer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset: Integer); overload;
	  constructor Create(buffer: JArrayBuffer; byteOffset, byteLength: Integer); overload;
		function getInt8(byteOffset: Integer): Integer;
		function getUint8(byteOffset: Integer): Integer;
		function getInt16(byteOffset: Integer): Integer; overload;
		function getInt16(byteOffset: Integer; littleEndian: Boolean): Integer; overload;
		function getUint16(byteOffset: Integer): Integer; overload;
		function getUint16(byteOffset: Integer; littleEndian: Boolean): Integer; overload;
		function getInt32(byteOffset: Integer): Integer; overload;
		function getInt32(byteOffset: Integer; littleEndian: Boolean): Integer; overload;
		function getUint32(byteOffset: Integer): Integer; overload;
		function getUint32(byteOffset: Integer; littleEndian: Boolean): Integer; overload;
		function getFloat32(byteOffset: Integer): Float; overload;
		function getFloat32(byteOffset: Integer; littleEndian: Boolean): Float; overload;
		function getFloat64(byteOffset: Integer): Float; overload;
		function getFloat64(byteOffset: Integer; littleEndian: Boolean): Float; overload;
		procedure setInt8(byteOffset: Integer; value: Integer);
		procedure setUint8(byteOffset: Integer; value: Integer);
		procedure setInt16(byteOffset: Integer; value: Integer); overload;
		procedure setInt16(byteOffset: Integer; value: Integer; littleEndian: Boolean); overload;
		procedure setUint16(byteOffset: Integer; value: Integer); overload;
		procedure setUint16(byteOffset: Integer; value: Integer; littleEndian: Boolean); overload;
		procedure setInt32(byteOffset: Integer; value: Integer); overload;
		procedure setInt32(byteOffset: Integer; value: Integer; littleEndian: Boolean); overload;
		procedure setUint32(byteOffset: Integer; value: Integer); overload;
		procedure setUint32(byteOffset: Integer; value: Integer; littleEndian: Boolean); overload;
		procedure setFloat32(byteOffset: Integer; value: Float); overload;
		procedure setFloat32(byteOffset: Integer; value: Float; littleEndian: Boolean); overload;
		procedure setFloat64(byteOffset: Integer; value: Float); overload;
		procedure setFloat64(byteOffset: Integer; value: Float; littleEndian: Boolean); overload;
	end;