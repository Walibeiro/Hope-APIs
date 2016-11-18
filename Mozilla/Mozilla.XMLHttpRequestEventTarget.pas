unit Mozilla.XMLHttpRequestEventTarget;

interface

type
  // Exposed=( Window , DedicatedWorker , SharedWorker)
  JXMLHttpRequestEventTarget = class external 'XMLHttpRequestEventTarget' (JEventTarget)
  public
    onloadstart: JEventHandler;
    onprogress: JEventHandler;
    onabort: JEventHandler;
    onerror: JEventHandler;
    onload: JEventHandler;
    ontimeout: JEventHandler;
    onloadend: JEventHandler;
  end;