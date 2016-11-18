unit Mozilla.ChromeNodeList;

interface

type
  // Constructor,Func=IsChromeOrXBL
  JChromeNodeList = class external 'ChromeNodeList' (JNodeList)
  public
    procedure append(aNode: JNode); { Throws } 
    procedure remove(aNode: JNode); { Throws } 
  end;

implementation

end.
