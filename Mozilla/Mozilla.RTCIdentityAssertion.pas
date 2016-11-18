unit Mozilla.RTCIdentityAssertion;

interface

type
  JRTCIdentityAssertion = class external 'RTCIdentityAssertion'
  public
    idp: String;
    &name: String;
  end;

implementation

end.
