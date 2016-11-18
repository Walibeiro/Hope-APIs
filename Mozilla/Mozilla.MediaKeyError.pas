unit Mozilla.MediaKeyError;

interface

type
  // Pref=media.eme.apiVisible
  JMediaKeyError = class external 'MediaKeyError' (JEvent)
  public
    systemCode: Integer;
  end;

implementation

end.
