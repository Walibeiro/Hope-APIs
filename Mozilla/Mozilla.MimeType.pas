unit Mozilla.MimeType;

interface

type
  JMimeType = class external 'MimeType'
  public
    description: String;
    enabledPlugin: JPlugin;
    suffixes: String;
    type: String;
  end;

implementation

end.
