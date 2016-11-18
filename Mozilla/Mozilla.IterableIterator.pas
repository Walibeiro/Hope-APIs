unit Mozilla.IterableIterator;

interface

type
  JIterableKeyOrValueResult = class external 'IterableKeyOrValueResult'
  public
    value: Variant;
    done: Boolean;
  end;

  JIterableKeyAndValueResult = class external 'IterableKeyAndValueResult'
  public
    value: array of Variant;
    done: Boolean;
  end;

implementation

end.
