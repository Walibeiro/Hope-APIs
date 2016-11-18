unit Mozilla.AutocompleteErrorEvent;

interface

type
  JAutoCompleteErrorReason = (, acerCancel, acerDisabled, acerInvalid);

  // Pref=dom.forms.requestAutocomplete,Constructor( DOMString type , optional AutocompleteErrorEventInit eventInitDict)
  JAutocompleteErrorEvent = class external 'AutocompleteErrorEvent' (JEvent)
  public
    reason: JAutoCompleteErrorReason;
  end;

  JAutocompleteErrorEventInit = class external 'AutocompleteErrorEventInit' (JEventInit)
  public
    reason: JAutoCompleteErrorReason;
  end;

implementation

end.
