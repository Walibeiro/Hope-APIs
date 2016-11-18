unit Mozilla.Crypto;

interface

type
  // NoInterfaceObject,Exposed=( Window , Worker)
  JGlobalCrypto = class external 'GlobalCrypto'
  public
    crypto: JCrypto; { Throws } 
  end;

  // Exposed=( Window , Worker)
  JCrypto = class external 'Crypto'
  public
    subtle: JSubtleCrypto;
    function getRandomValues(&array: JArrayBufferView): JArrayBufferView; { Throws } 
  end;

implementation

end.
