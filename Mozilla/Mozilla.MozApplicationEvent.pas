unit Mozilla.MozApplicationEvent;

interface

type
  // Constructor( DOMString type , optional MozApplicationEventInit eventInitDict),ChromeOnly
  JMozApplicationEvent = class external 'MozApplicationEvent' (JEvent)
  public
    application: JDOMApplication;
  end;

  JMozApplicationEventInit = class external 'MozApplicationEventInit' (JEventInit)
  public
    application: JDOMApplication;
  end;

implementation

end.
