unit Mozilla.SharedWorker;

interface

type
  // Constructor( DOMString scriptURL , optional DOMString name)
  JSharedWorker = class external 'SharedWorker' (JEventTarget)
  public
    port: JMessagePort;
  end;

implementation

end.
