unit Mozilla.MediaStreamList;

interface

type
  // ChromeOnly
  JMediaStreamList = class external 'MediaStreamList'
  public
    length: Integer;
    function (&index: Integer): JMediaStream;
  end;

implementation

end.
