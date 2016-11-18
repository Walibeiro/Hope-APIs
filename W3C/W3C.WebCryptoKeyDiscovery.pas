unit W3C.WebCryptoKeyDiscovery;

interface

uses
  W3C.HTML5, W3C.WebWorkers, W3C.Cryptography;

type
  JNamedKey = class external 'NamedKey' (JCryptoKey)
  public
    name: String;
    id: String;
  end;

  // NoInterfaceObject
  JCryptoKeys = class external 'CryptoKeys'
  public
    procedure getKeyByName(&name: String); // TODO: returns promise
  end;

  JWorkerGlobalScope = partial class external 'WorkerGlobalScope'
  public
    cryptokeys: JCryptoKeys;
  end;

  JWindow = partial class external 'Window'
  public
    cryptokeys: JCryptoKeys;
  end;