unit Mozilla.CreateOfferRequest;

interface

type
  // ChromeOnly,JSImplementation=@mozilla.org/dom/createofferrequest;1
  JCreateOfferRequest = class external 'CreateOfferRequest'
  public
    windowID: Integer;
    innerWindowID: Integer;
    callID: String;
    isSecure: Boolean;
  end;

implementation

end.
