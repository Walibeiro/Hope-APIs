unit Mozilla.XMLHttpRequest;

interface

type
  JXMLHttpRequestResponseType = (, arraybuffer, blob, document, json, text, moz-chunked-text, moz-chunked-arraybuffer, moz-blob);

  JMozXMLHttpRequestParameters = class external 'MozXMLHttpRequestParameters'
  public
    mozAnon: Boolean;
    mozSystem: Boolean;
  end;

  // Constructor( optional MozXMLHttpRequestParameters params),Constructor( DOMString ignored),Exposed=( Window , DedicatedWorker , SharedWorker)
  JXMLHttpRequest = class external 'XMLHttpRequest' (JXMLHttpRequestEventTarget)
  const 
    UNSENT: Integer = 0;
    OPENED: Integer = 1;
    HEADERS_RECEIVED: Integer = 2;
    LOADING: Integer = 3;
    DONE: Integer = 4;
  public
    onreadystatechange: JEventHandler;
    readyState: Integer;
    timeout: Integer; { SetterThrows } 
    withCredentials: Boolean; { SetterThrows } 
    upload: JXMLHttpRequestUpload; { Throws } 
    responseURL: String;
    status: Integer; { Throws } 
    statusText: JByteString; { Throws } 
    responseType: JXMLHttpRequestResponseType; { SetterThrows } 
    response: Variant; { Throws } 
    responseText: String; { Cached,Pure,Throws } 
    responseXML: JDocument; { Throws,Exposed=Window } 
    mozBackgroundRequest: Boolean; { ChromeOnly,SetterThrows } 
    channel: JMozChannel; { ChromeOnly,Exposed=Window } 
    networkInterfaceId: JByteString; { ChromeOnly,Exposed=Window } 
    mozAnon: Boolean;
    mozSystem: Boolean;
    procedure open(&method: JByteString; url: String); { Throws } 
    procedure open(&method: JByteString; url: String; async: Boolean; user: String = ; password: String = ); { Throws } 
    procedure setRequestHeader(header: JByteString; value: JByteString); { Throws } 
    procedure send; { Throws } 
    procedure send(data: JArrayBuffer); { Throws } 
    procedure send(data: JArrayBufferView); { Throws } 
    procedure send(data: JBlob); { Throws } 
    procedure send(data: JDocument); { Throws } 
    procedure send(data: String); { Throws } 
    procedure send(data: JFormData); { Throws } 
    procedure send(data: JInputStream); { Throws } 
    procedure send(data: JURLSearchParams); { Throws } 
    procedure abort; { Throws } 
    function getResponseHeader(header: JByteString): JByteString; { Throws } 
    function getAllResponseHeaders: JByteString; { Throws } 
    procedure overrideMimeType(mime: String); { Throws } 
    function getInterface(iid: JIID): Variant; { Throws,ChromeOnly,Exposed=Window } 
    procedure setOriginAttributes; overload; { ChromeOnly,Exposed=Window } 
    procedure setOriginAttributes(originAttributes: JOriginAttributesDictionary); overload; { ChromeOnly,Exposed=Window } 
  end;