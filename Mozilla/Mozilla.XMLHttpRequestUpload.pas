unit Mozilla.XMLHttpRequestUpload;

interface

type
  // Exposed=( Window , DedicatedWorker , SharedWorker)
  JXMLHttpRequestUpload = class external 'XMLHttpRequestUpload' (JXMLHttpRequestEventTarget)
  end;