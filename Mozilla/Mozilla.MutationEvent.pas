unit Mozilla.MutationEvent;

interface

type
  JMutationEvent = class external 'MutationEvent' (JEvent)
  const 
    MODIFICATION: Integer = 1;
    ADDITION: Integer = 2;
    REMOVAL: Integer = 3;
  public
    relatedNode: JNode;
    prevValue: String;
    newValue: String;
    attrName: String;
    attrChange: Integer;
    procedure initMutationEvent(&type: String; canBubble: Boolean; cancelable: Boolean; relatedNode: JNode; prevValue: String; newValue: String; attrName: String; attrChange: Integer); { Throws } 
  end;

implementation

end.
