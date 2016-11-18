unit Mozilla.TestInterfaceJSDictionaries;

interface

type
  JTestInterfaceJSDictionary2 = class external 'TestInterfaceJSDictionary2'
  public
    innerObject: Variant;
  end;

  JTestInterfaceJSDictionary = class external 'TestInterfaceJSDictionary'
  public
    innerDictionary: JTestInterfaceJSDictionary2;
    objectMember: Variant;
    anyMember: Variant;
    objectOrStringMember: Union;
    anySequenceMember: array of Variant;
  end;

implementation

end.
