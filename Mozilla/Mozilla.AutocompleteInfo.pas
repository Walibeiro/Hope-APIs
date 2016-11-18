unit Mozilla.AutocompleteInfo;

interface

type
  JAutocompleteInfo = class external 'AutocompleteInfo'
  public
    section: String;
    addressType: String;
    contactType: String;
    fieldName: String;
  end;

implementation

end.
