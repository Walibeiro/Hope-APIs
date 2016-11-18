unit Mozilla.SourceBufferList;

interface

type
  // Func=mozilla::dom::MediaSource::Enabled
  JSourceBufferList = class external 'SourceBufferList' (JEventTarget)
  public
    length: Integer;
    onaddsourcebuffer: JEventHandler;
    onremovesourcebuffer: JEventHandler;
    function (&index: Integer): JSourceBuffer;
  end;

implementation

end.
