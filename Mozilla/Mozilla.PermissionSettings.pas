unit Mozilla.PermissionSettings;

interface

type
  // JSImplementation=@mozilla.org/permissionSettings;1,ChromeOnly,Pref=dom.mozPermissionSettings.enabled,NavigatorProperty=mozPermissionSettings
  JPermissionSettings = class external 'PermissionSettings'
  public
    function get(permission: String; manifestURI: String; origin: String; browserFlag: Boolean): String;
    procedure set(permission: String; value: String; manifestURI: String; origin: String; browserFlag: Boolean);
    function isExplicit(permission: String; manifestURI: String; origin: String; browserFlag: Boolean): Boolean;
    procedure remove(permission: String; manifestURI: String; origin: String);
  end;

implementation

end.
