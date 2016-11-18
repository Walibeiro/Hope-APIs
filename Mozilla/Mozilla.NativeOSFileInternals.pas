unit Mozilla.NativeOSFileInternals;

interface

type
  JNativeOSFileReadOptions = class external 'NativeOSFileReadOptions'
  public
    encoding: String;
    bytes: Integer;
  end;

implementation

end.
