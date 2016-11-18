unit W3C.Cryptography;

interface

uses
  ECMA.TypedArray;

type
  TAlgorithmIdentifier = Variant; // TODO: Object or String
  THashAlgorithmIdentifier = TAlgorithmIdentifier;
  JAlgorithm = class external 'Algorithm'
  public
    &name: String;
  end;

  JKeyAlgorithm = class external 'KeyAlgorithm'
  public
    &name: String;
  end;

  JKeyType = String;
  JKeyTypeHelper = strict helper for JKeyType
    const Public = 'public';
    const Private = 'private';
    const Secret = 'secret';
  end;

  JKeyUsage = String;
  JKeyUsageHelper = strict helper for JKeyUsage
    const Encrypt = 'Encrypt';
    const Decrypt = 'Decrypt';
    const Sign = 'Sign';
    const Verify = 'Verify';
    const DeriveKey = 'DeriveKey';
    const DeriveBits = 'DeriveBits';
    const WrapKey = 'WrapKey';
    const UnwrapKey = 'UnwrapKey';
  end;

  // SecureContext, Exposed = (Window, Worker)
  JCryptoKey = class external 'CryptoKey'
  public
    &type: JKeyType;
    extractable: Boolean;
    algorithm: Variant;
    usages: Variant;
  end;

  JKeyFormat = String;
  JKeyFormatHelper = strict helper for JKeyFormat
    const Raw = 'raw';
    const Spki = 'spki';
    const Pkcs8 = 'pkcs8';
    const Jwk = 'jwk';
  end;

  JRsaOtherPrimesInfo = class external 'RsaOtherPrimesInfo'
  public
    r: String;
    d: String;
    t: String;
  end;

  JJsonWebKey = class external 'JsonWebKey'
  public
    kty: String;
    use: String;
    key_ops: array of String;
    alg: String;
    ext: Boolean;
    crv: String;
    x: String;
    y: String;
    d: String;
    n: String;
    e: String;
    p: String;
    q: String;
    dp: String;
    dq: String;
    qi: String;
    oth: array of JRsaOtherPrimesInfo;
    k: String;
  end;

  // SecureContext, Exposed = (Window, Worker)
  JSubtleCrypto = class external 'SubtleCrypto'
  public
    function encrypt(algorithm: TAlgorithmIdentifier; key: JCryptoKey; data: JArrayBufferView): Variant; overload;
    function encrypt(algorithm: TAlgorithmIdentifier; key: JCryptoKey; data: JArrayBuffer): Variant; overload;
    function decrypt(algorithm: TAlgorithmIdentifier; key: JCryptoKey; data: JArrayBufferView): Variant; overload;
    function decrypt(algorithm: TAlgorithmIdentifier; key: JCryptoKey; data: JArrayBuffer): Variant; overload;
    function sign(algorithm: TAlgorithmIdentifier; key: JCryptoKey; data: JArrayBufferView): Variant; overload;
    function sign(algorithm: TAlgorithmIdentifier; key: JCryptoKey; data: JArrayBuffer): Variant; overload;
    function verify(algorithm: TAlgorithmIdentifier; key: JCryptoKey; signature: JArrayBufferView; data: JArrayBufferView): Variant; overload;
    function verify(algorithm: TAlgorithmIdentifier; key: JCryptoKey; signature: JArrayBufferView; data: JArrayBuffer): Variant; overload;
    function verify(algorithm: TAlgorithmIdentifier; key: JCryptoKey; signature: JArrayBuffer; data: JArrayBufferView): Variant; overload;
    function verify(algorithm: TAlgorithmIdentifier; key: JCryptoKey; signature: JArrayBuffer; data: JArrayBuffer): Variant; overload;
    function digest(algorithm: TAlgorithmIdentifier; data: JArrayBufferView): Variant; overload;
    function digest(algorithm: TAlgorithmIdentifier; data: JArrayBuffer): Variant; overload;
    function generateKey(algorithm: TAlgorithmIdentifier; extractable: Boolean; keyUsages: array of JKeyUsage): Variant;
    function deriveKey(algorithm: TAlgorithmIdentifier; baseKey: JCryptoKey; derivedKeyType: TAlgorithmIdentifier; extractable: Boolean; keyUsages: array of JKeyUsage): Variant;
    function deriveBits(algorithm: TAlgorithmIdentifier; baseKey: JCryptoKey; _length: Integer): JArrayBuffer;
    function importKey(format: JKeyFormat; keyData: JArrayBufferView; algorithm: TAlgorithmIdentifier; extractable: Boolean; keyUsages: array of JKeyUsage): JCryptoKey; overload;
    function importKey(format: JKeyFormat; keyData: JArrayBuffer; algorithm: TAlgorithmIdentifier; extractable: Boolean; keyUsages: array of JKeyUsage): JCryptoKey; overload;
    function importKey(format: JKeyFormat; keyData: JJsonWebKey; algorithm: TAlgorithmIdentifier; extractable: Boolean; keyUsages: array of JKeyUsage): JCryptoKey; overload;
    function exportKey(format: JKeyFormat; key: JCryptoKey): Variant;
    function wrapKey(format: JKeyFormat; key: JCryptoKey; wrappingKey: JCryptoKey; wrapAlgorithm: TAlgorithmIdentifier): Variant;
    function unwrapKey(format: JKeyFormat; wrappedKey: JArrayBufferView; unwrappingKey: JCryptoKey; unwrapAlgorithm, unwrappedKeyAlgorithm: JObject; extractable: Boolean; keyUsages: array of JKeyUsage): JCryptoKey; overload;
    function unwrapKey(format: JKeyFormat; wrappedKey: JArrayBuffer; unwrappingKey: JCryptoKey; unwrapAlgorithm, unwrappedKeyAlgorithm: JObject; extractable: Boolean; keyUsages: array of JKeyUsage): JCryptoKey; overload;
    function unwrapKey(format: JKeyFormat; wrappedKey: JArrayBufferView; unwrappingKey: JCryptoKey; unwrapAlgorithm: String; unwrappedKeyAlgorithm: JObject; extractable: Boolean; keyUsages: array of JKeyUsage): JCryptoKey; overload;
    function unwrapKey(format: JKeyFormat; wrappedKey: JArrayBuffer; unwrappingKey: JCryptoKey; unwrapAlgorithm: String; unwrappedKeyAlgorithm: JObject; extractable: Boolean; keyUsages: array of JKeyUsage): JCryptoKey; overload;
    function unwrapKey(format: JKeyFormat; wrappedKey: JArrayBufferView; unwrappingKey: JCryptoKey; unwrapAlgorithm: JObject; unwrappedKeyAlgorithm: String; extractable: Boolean; keyUsages: array of JKeyUsage): JCryptoKey; overload;
    function unwrapKey(format: JKeyFormat; wrappedKey: JArrayBuffer; unwrappingKey: JCryptoKey; unwrapAlgorithm: JObject; unwrappedKeyAlgorithm: String; extractable: Boolean; keyUsages: array of JKeyUsage): JCryptoKey; overload;
    function unwrapKey(format: JKeyFormat; wrappedKey: JArrayBufferView; unwrappingKey: JCryptoKey; unwrapAlgorithm, unwrappedKeyAlgorithm: String; extractable: Boolean; keyUsages: array of JKeyUsage): JCryptoKey; overload;
    function unwrapKey(format: JKeyFormat; wrappedKey: JArrayBuffer; unwrappingKey: JCryptoKey; unwrapAlgorithm, unwrappedKeyAlgorithm: String; extractable: Boolean; keyUsages: array of JKeyUsage): JCryptoKey; overload;
  end;

  TBigInteger = JUint8Array;
  JCryptoKeyPair = class external 'CryptoKeyPair'
  public
    publicKey: JCryptoKey;
    privateKey: JCryptoKey;
  end;

  JRsaKeyGenParams = class external 'RsaKeyGenParams' (JAlgorithm)
  public
    modulusLength: Integer; { EnforceRange }
    publicExponent: TBigInteger;
  end;

  JRsaHashedKeyGenParams = class external 'RsaHashedKeyGenParams' (JRsaKeyGenParams)
  public
    hash: THashAlgorithmIdentifier;
  end;

  JRsaKeyAlgorithm = class external 'RsaKeyAlgorithm' (JKeyAlgorithm)
  public
    modulusLength: Integer;
    publicExponent: TBigInteger;
  end;

  JRsaHashedKeyAlgorithm = class external 'RsaHashedKeyAlgorithm' (JRsaKeyAlgorithm)
  public
    hash: JKeyAlgorithm;
  end;

  JRsaHashedImportParams = class external 'RsaHashedImportParams' (JAlgorithm)
  public
    hash: THashAlgorithmIdentifier;
  end;

  JRsaPssParams = class external 'RsaPssParams' (JAlgorithm)
  public
    saltLength: Integer; { EnforceRange }
  end;

  JRsaOaepParams = class external 'RsaOaepParams' (JAlgorithm)
  public
    label: Variant;
    labelAsArrayBuffer: JArrayBuffer; external 'label';
    labelAsArrayBufferView: JArrayBufferView; external 'label';
  end;

  JEcdsaParams = class external 'EcdsaParams' (JAlgorithm)
  public
    hash: THashAlgorithmIdentifier;
  end;

  TNamedCurve = String;
  JEcKeyGenParams = class external 'EcKeyGenParams' (JAlgorithm)
  public
    namedCurve: TNamedCurve;
  end;

  JEcKeyAlgorithm = class external 'EcKeyAlgorithm' (JKeyAlgorithm)
  public
    namedCurve: TNamedCurve;
  end;

  JEcKeyImportParams = class external 'EcKeyImportParams' (JAlgorithm)
  public
    namedCurve: TNamedCurve;
  end;

  JEcdhKeyDeriveParams = class external 'EcdhKeyDeriveParams' (JAlgorithm)
  public
    &public: JCryptoKey;
  end;

  JAesCtrParams = class external 'AesCtrParams' (JAlgorithm)
  public
    counter: Variant;
    counterAsArrayBuffer: JArrayBuffer; external 'counter';
    counterAsArrayBufferView: JArrayBufferView; external 'counter';
    length: Integer; { EnforceRange }
  end;

  JAesKeyAlgorithm = class external 'AesKeyAlgorithm' (JKeyAlgorithm)
  public
    length: Integer;
  end;

  JAesKeyGenParams = class external 'AesKeyGenParams' (JAlgorithm)
  public
    length: Integer; { EnforceRange }
  end;

  JAesDerivedKeyParams = class external 'AesDerivedKeyParams' (JAlgorithm)
  public
    length: Integer; { EnforceRange }
  end;

  JAesCbcParams = class external 'AesCbcParams' (JAlgorithm)
  public
    iv: Variant;
    ivAsArrayBuffer: JArrayBuffer; external 'iv';
    ivAsArrayBufferView: JArrayBufferView; external 'iv';
  end;

  JAesGcmParams = class external 'AesGcmParams' (JAlgorithm)
  public
    iv: Variant;
    ivAsArrayBuffer: JArrayBuffer; external 'iv';
    ivAsArrayBufferView: JArrayBufferView; external 'iv';
    additionalData: Variant;
    additionalDataAsArrayBuffer: JArrayBuffer; external 'additionalData';
    additionalDataAsArrayBufferView: JArrayBufferView; external 'additionalData';
    tagLength: Integer; { EnforceRange }
  end;

  JHmacImportParams = class external 'HmacImportParams' (JAlgorithm)
  public
    hash: THashAlgorithmIdentifier;
    length: Integer; { EnforceRange }
  end;

  JHmacKeyAlgorithm = class external 'HmacKeyAlgorithm' (JKeyAlgorithm)
  public
    hash: JKeyAlgorithm;
    length: Integer;
  end;

  JHmacKeyGenParams = class external 'HmacKeyGenParams' (JAlgorithm)
  public
    hash: THashAlgorithmIdentifier;
    length: Integer; { EnforceRange }
  end;

  JHkdfParams = class external 'HkdfParams' (JAlgorithm)
  public
    hash: THashAlgorithmIdentifier;
    salt: Variant;
    saltDataAsArrayBuffer: JArrayBuffer; external 'salt';
    saltDataAsArrayBufferView: JArrayBufferView; external 'salt';
    info: Variant;
    infoDataAsArrayBuffer: JArrayBuffer; external 'info';
    infoDataAsArrayBufferView: JArrayBufferView; external 'info';
  end;

  JPbkdf2Params = class external 'Pbkdf2Params' (JAlgorithm)
  public
    salt: Variant;
    saltDataAsArrayBuffer: JArrayBuffer; external 'salt';
    saltDataAsArrayBufferView: JArrayBufferView; external 'salt';
    iterations: Integer; { EnforceRange }
    hash: THashAlgorithmIdentifier;
  end;

  // Exposed = (Window, Worker)
  JCrypto = class external 'Crypto'
  public
    subtle: JSubtleCrypto; { SecureContext }
    function getRandomValues(&array: JArrayBufferView): JArrayBufferView;
  end;

  // NoInterfaceObject, Exposed = (Window, Worker)
  JGlobalCrypto = class external 'GlobalCrypto'
  public
    crypto: JCrypto;
  end;