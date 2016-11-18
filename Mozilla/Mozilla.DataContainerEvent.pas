unit Mozilla.DataContainerEvent;

interface

type
  // ChromeOnly
  JDataContainerEvent = class external 'DataContainerEvent' (JEvent)
  public
    function getData(key: String): JnsIVariant;
    procedure setData(key: String; data: Variant); { Throws } 
  end;

implementation

end.
