unit WHATWG.Streams;

interface

type
  JReadableStream = class external 'ReadableStream'
  end;

  JReadableStreamController = class external 'ReadableStreamController'
  end;

  JReadableStreamReader = class external 'ReadableStreamReader'
  end;

  JWritableStream = class external 'WritableStream'
  end;

  JByteLengthQueuingStrategy = class external 'ByteLengthQueuingStrategy'
  end;

  JCountQueuingStrategy = class external 'CountQueuingStrategy'
  end;

  JReadableByteStream = class external 'ReadableByteStream'
  end;

  JReadableByteStreamController = class external 'ReadableByteStreamController'
  end;

  JReadableByteStreamReader = class external 'ReadableByteStreamReader'
  end;

  JReadableByteStreamByobReader = class external 'ReadableByteStreamByobReader'
  end;