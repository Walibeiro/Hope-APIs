unit W3C.WebAuthentification;

interface

uses
  ECMA.TypedArray, W3C.Geolocation, W3C.CredentialManagement;

type
	TAAGUID = JArrayBuffer; // or JArrayBufferView
	TAuthenticatorSelectionList = array of TAAGUID;
	TAuthenticationExtensionsSupported = array of String;
	TUvmEntry = array of Integer;
	TUvmEntries = array of TUvmEntry;

	JTokenBindingStatus = String;
  JTokenBindingStatusHelper = strict helper for JTokenBindingStatus
    const Present = 'present';
    const Supported = 'supported';
    const NotSupported = 'not-supported';
  end;

	JPublicKeyCredentialType = String;
  JPublicKeyCredentialTypeHelper = strict helper for JPublicKeyCredentialType
    const PublicKey = 'public-key';
  end;

	JAuthenticatorTransport = String;
  JAuthenticatorTransportHelper = strict helper for JAuthenticatorTransport
    const Usb = 'usb';
    const Nfc = 'nfc';
    const Ble = 'ble';
  end;

	TCOSEAlgorithmIdentifier = Integer;

	JUserVerificationRequirement = String;
  JUserVerificationRequirementHelper = strict helper for JUserVerificationRequirement
    const Required = 'required';
    const Preferred = 'preferred';
    const Discouraged = 'discouraged';
  end;

	JAuthenticatorAttachment = String;
  JAuthenticatorAttachmentHelper = strict helper for JAuthenticatorAttachment
    const Platform = 'platform';
    const CrossPlatform = 'cross-platform';
  end;

	JAttestationConveyancePreference = String;
  JAttestationConveyancePreferenceHelper = strict helper for JAttestationConveyancePreference
    const None = 'none';
    const Indirect = 'indirect';
    const Direct = 'direct';
  end;

	// SecureContext,Exposed=Window
	JAuthenticatorResponse = class external 'AuthenticatorResponse'
	public
		clientDataJSON: JArrayBuffer; { SameObject }
	end;

	JtxAuthGenericArg = class external 'txAuthGenericArg'
	public
		contentType: String; // required
		content: JArrayBuffer; // required
	end;

	JAuthenticationExtensionsClientInputs = class external 'AuthenticationExtensionsClientInputs'
	public
		appid: String;
		txAuthSimple: String;
		txAuthGeneric: JtxAuthGenericArg;
		authnSel: TAuthenticatorSelectionList;
		exts: Boolean;
		uvi: Boolean;
		loc: Boolean;
		uvm: Boolean;
	end;

	JAuthenticationExtensionsClientOutputs = class external 'AuthenticationExtensionsClientOutputs'
	public
		appid: Boolean;
		txAuthSimple: String;
		txAuthGeneric: JArrayBuffer;
		authnSel: Boolean;
		exts: TAuthenticationExtensionsSupported;
		uvi: JArrayBuffer;
		loc: JCoordinates;
		uvm: TUvmEntries;
	end;

	// SecureContext,Exposed=Window
	JPublicKeyCredential = class external 'PublicKeyCredential' (JCredential)
	public
		rawId: JArrayBuffer; { SameObject } 
		response: JAuthenticatorResponse; { SameObject } 
		function getClientExtensionResults: JAuthenticationExtensionsClientOutputs;
		function isUserVerifyingPlatformAuthenticatorAvailable: boolean;
	end;

	JPublicKeyCredentialEntity = class external 'PublicKeyCredentialEntity'
	public
		&name: String; // required
		icon: String;
	end;

	JPublicKeyCredentialRpEntity = class external 'PublicKeyCredentialRpEntity' (JPublicKeyCredentialEntity)
	public
		id: String;
	end;

	JPublicKeyCredentialUserEntity = class external 'PublicKeyCredentialUserEntity' (JPublicKeyCredentialEntity)
	public
		id: JArrayBuffer; // required
		idAsArrayBufferView: JArrayBufferView; external 'id'; // required
		displayName: String; // required
	end;

	JPublicKeyCredentialParameters = class external 'PublicKeyCredentialParameters'
	public
		&type: JPublicKeyCredentialType; // required
		alg: TCOSEAlgorithmIdentifier; // required
	end;

	JPublicKeyCredentialDescriptor = class external 'PublicKeyCredentialDescriptor'
	public
		&type: JPublicKeyCredentialType; // required
		id: JArrayBuffer; // required
		idAsArrayBufferView: JArrayBufferView; external 'id'; // required
		transports: array of JAuthenticatorTransport;
	end;

	JauthenticatorBiometricPerfBounds = class external 'authenticatorBiometricPerfBounds'
	public
		FAR: Float;
		FRR: Float;
	end;

	JAuthenticatorSelectionCriteria = class external 'AuthenticatorSelectionCriteria'
	public
		authenticatorAttachment: JAuthenticatorAttachment;
		requireResidentKey: Boolean;
		userVerification: JUserVerificationRequirement;
	end;

  JPublicKeyCredentialCreationOptions = class external 'PublicKeyCredentialCreationOptions'
	public
		rp: JPublicKeyCredentialRpEntity; // required
		user: JPublicKeyCredentialUserEntity; // required
		challenge: JArrayBuffer; // required
		challengeAsArrayBufferView: JArrayBufferView; external 'challenge'; // required
		pubKeyCredParams: array of JPublicKeyCredentialParameters; // required
		timeout: Integer;
		excludeCredentials: array of JPublicKeyCredentialDescriptor;
		authenticatorSelection: JAuthenticatorSelectionCriteria;
		attestation: JAttestationConveyancePreference;
		extensions: JAuthenticationExtensionsClientInputs;
	end;

	JCredentialCreationOptions = class external 'CredentialCreationOptions'
	public
		publicKey: JPublicKeyCredentialCreationOptions;
	end;

	JPublicKeyCredentialRequestOptions = class external 'PublicKeyCredentialRequestOptions'
	public
		challenge: JArrayBuffer; // required
		challengeAsArrayBufferView: JArrayBufferView; external 'challenge'; // required
		timeout: Integer;
		rpId: String;
		allowCredentials: array of JPublicKeyCredentialDescriptor;
		userVerification: JUserVerificationRequirement;
		extensions: JAuthenticationExtensionsClientInputs;
	end;

	JCredentialRequestOptions = class external 'CredentialRequestOptions'
	public
		publicKey: JPublicKeyCredentialRequestOptions;
	end;

	// SecureContext,Exposed=Window
	JAuthenticatorAttestationResponse = class external 'AuthenticatorAttestationResponse' (JAuthenticatorResponse)
	public
		attestationObject: JArrayBuffer; { SameObject } 
	end;

	// SecureContext,Exposed=Window
	JAuthenticatorAssertionResponse = class external 'AuthenticatorAssertionResponse' (JAuthenticatorResponse)
	public
		authenticatorData: JArrayBuffer; { SameObject } 
		signature: JArrayBuffer; { SameObject } 
		userHandle: JArrayBuffer; { SameObject } 
	end;

//typedef record<DOMString, DOMString> AuthenticationExtensionsAuthenticatorInputs;

	JTokenBinding = class external 'TokenBinding'
	public
		status: JTokenBindingStatus; // required
		id: String;
	end;

	JCollectedClientData = class external 'CollectedClientData'
	public
		&type: String; // required
		challenge: String; // required
		origin: String; // required
		tokenBinding: JTokenBinding;
	end;

