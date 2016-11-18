unit Mozilla.MediaList;

interface

type
  // ArrayClass
  JMediaList = class external 'MediaList'
  public
    mediaText: String; { TreatNullAs=EmptyString } 
    length: Integer;
    function item(&index: Integer): String;
    procedure deleteMedium(oldMedium: String); { Throws } 
    procedure appendMedium(newMedium: String); { Throws } 
  end;

implementation

end.
