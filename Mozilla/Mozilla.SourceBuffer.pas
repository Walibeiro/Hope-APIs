unit Mozilla.SourceBuffer;

interface

type
  JSourceBufferAppendMode = (sbamSegments, sbamSequence);

  // Func=mozilla::dom::MediaSource::Enabled
  JSourceBuffer = class external 'SourceBuffer' (JEventTarget)
  public
    mode: JSourceBufferAppendMode; { SetterThrows } 
    updating: Boolean;
    buffered: JTimeRanges; { Throws } 
    timestampOffset: Float; { SetterThrows } 
    appendWindowStart: Float; { SetterThrows } 
    appendWindowEnd: Float; { SetterThrows } 
    onupdatestart: JEventHandler;
    onupdate: JEventHandler;
    onupdateend: JEventHandler;
    onerror: JEventHandler;
    onabort: JEventHandler;
    procedure appendBuffer(data: JArrayBuffer); { Throws } 
    procedure appendBuffer(data: JArrayBufferView); { Throws } 
    procedure abort; { Throws } 
    procedure remove(start: Float; &end: Float); { Throws } 
  end;

implementation

end.
