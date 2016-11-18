unit Mozilla.ProcessingInstruction;

interface

type
  JProcessingInstruction = class external 'ProcessingInstruction' (JCharacterData)
  public
    target: String;
  end;

implementation

end.
