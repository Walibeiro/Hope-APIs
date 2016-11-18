unit Mozilla.HTMLHyperlinkElementUtils;

interface

type
  // NoInterfaceObject
  JHTMLHyperlinkElementUtils = class external 'HTMLHyperlinkElementUtils'
  public
    href: JUSVString; { SetterThrows } 
    origin: JUSVString;
    protocol: JUSVString;
    username: JUSVString;
    password: JUSVString;
    host: JUSVString;
    hostname: JUSVString;
    port: JUSVString;
    pathname: JUSVString;
    search: JUSVString;
    hash: JUSVString;
  end;

implementation

end.
