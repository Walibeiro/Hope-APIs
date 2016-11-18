unit ECMA.Promise;

interface

type
  TOnFulFilled = procedure(response: Variant); 
  TOnRejected = procedure(reason: Variant); 

  JPromise = class external 'Promise'
  public
    constructor Create(Executor: procedure(resolve: TOnFulFilled; reject: TOnRejected));
    class function all(iterable: array of JPromise): JPromise;
    class function race(iterable: array of JPromise): JPromise;
    class function reject(reason: Variant): JPromise;
    class function resolve(value: Variant): JPromise;

    function &then(onFulfilled: TOnFulFilled; onRejected: TOnRejected): JPromise;
    procedure catch(onRejected: TOnRejected);
  end;