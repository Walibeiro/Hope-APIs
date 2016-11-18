unit Mozilla.ValidityState;

interface

type
  JValidityState = class external 'ValidityState'
  public
    valueMissing: Boolean;
    typeMismatch: Boolean;
    patternMismatch: Boolean;
    tooLong: Boolean;
    tooShort: Boolean;
    rangeUnderflow: Boolean;
    rangeOverflow: Boolean;
    stepMismatch: Boolean;
    badInput: Boolean;
    customError: Boolean;
    valid: Boolean;
  end;

implementation

end.
