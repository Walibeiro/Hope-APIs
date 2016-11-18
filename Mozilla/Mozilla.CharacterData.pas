unit Mozilla.CharacterData;

interface

type
  JCharacterData = class external 'CharacterData' (JNode)
  public
    data: String; { TreatNullAs=EmptyString,Pure,SetterThrows } 
    length: Integer; { Pure } 
    function substringData(offset: Integer; count: Integer): String; { Throws } 
    procedure appendData(data: String); { Throws } 
    procedure insertData(offset: Integer; data: String); { Throws } 
    procedure deleteData(offset: Integer; count: Integer); { Throws } 
    procedure replaceData(offset: Integer; count: Integer; data: String); { Throws } 
  end;

implementation

end.
