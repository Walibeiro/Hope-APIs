unit Mozilla.AccessibleNode;

interface

type
  // Pref=accessibility.AOM.enabled
  JAccessibleNode = class external 'AccessibleNode'
  public
    role: String;
    DOMNode: JNode;
  end;

implementation

end.
