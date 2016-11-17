unit WHATWG.Streams;

interface

type
  JReadableStream = class external 'ReadableStream';
  JReadableStreamController = class external 'ReadableStreamController';
  JReadableStreamReader = class external 'ReadableStreamReader';
  JWritableStream = class external 'WritableStream';
  JByteLengthQueuingStrategy = class external 'ByteLengthQueuingStrategy';
  JCountQueuingStrategy = class external 'CountQueuingStrategy';
  JReadableByteStream = class external 'ReadableByteStream';
  JReadableByteStreamController = class external 'ReadableByteStreamController';
  JReadableByteStreamReader = class external 'ReadableByteStreamReader';
  JReadableByteStreamByobReader = class external 'ReadableByteStreamByobReader';