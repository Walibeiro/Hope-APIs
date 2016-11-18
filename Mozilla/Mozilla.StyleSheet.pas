unit Mozilla.StyleSheet;

interface

type
  JStyleSheet = class external 'StyleSheet'
  public
    type: String; { Constant } 
    href: String; { Constant } 
    ownerNode: JNode; { Pure } 
    parentStyleSheet: JStyleSheet; { Pure } 
    title: String; { Pure } 
    media: JMediaList; { Constant } 
    disabled: Boolean; { Pure } 
  end;

implementation

end.
