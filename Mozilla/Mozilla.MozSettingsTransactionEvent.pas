unit Mozilla.MozSettingsTransactionEvent;

interface

type
  // Constructor( DOMString type , optional MozSettingsTransactionEventInit eventInitDict),ChromeOnly
  JMozSettingsTransactionEvent = class external 'MozSettingsTransactionEvent' (JEvent)
  public
    error: String;
  end;

  JMozSettingsTransactionEventInit = class external 'MozSettingsTransactionEventInit' (JEventInit)
  public
    error: String;
  end;

implementation

end.
