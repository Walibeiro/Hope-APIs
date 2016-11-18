unit Mozilla.SettingChangeNotification;

interface

type
  JSettingChangeNotification = class external 'SettingChangeNotification'
  public
    key: String;
    value: Variant;
    isInternalChange: Boolean;
  end;

implementation

end.
