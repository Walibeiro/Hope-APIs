unit Mozilla.AppInfo;

interface

type
  JAppInfo = class external 'AppInfo'
  public
    path: String;
    isCoreApp: Boolean;
  end;

implementation

end.
