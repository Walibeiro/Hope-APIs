unit Mozilla.LocalMediaStream;

interface

type
  JLocalMediaStream = class external 'LocalMediaStream' (JMediaStream)
  public
    procedure stop;
  end;

implementation

end.
