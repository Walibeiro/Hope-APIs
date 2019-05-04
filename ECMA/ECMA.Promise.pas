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

    function &then(onFulfilled: TOnFulFilled): JPromise; overload;
    function &then(onFulfilled: TOnFulFilled; onRejected: TOnRejected): JPromise; overload;
    procedure catch(onRejected: TOnRejected);
  end;


  TOnFulFilledVoid = procedure;

  JPromiseVoid = class external 'Promise' (JPromise)
  public
    constructor Create(Executor: procedure(resolve: TOnFulFilledVoid; reject: TOnRejected));
    class function resolve: JPromiseVoid;

    function &then(onFulfilled: TOnFulFilledVoid): JPromiseVoid; overload;
    function &then(onFulfilled: TOnFulFilledVoid; onRejected: TOnRejected): JPromiseVoid; overload;
  end;


  TOnFulFilledBoolean = procedure(response: Boolean);

  JPromiseBoolean = class external 'Promise' (JPromise)
  public
    constructor Create(Executor: procedure(resolve: TOnFulFilledBoolean; reject: TOnRejected));
    class function resolve(value: Boolean): JPromiseBoolean;

    function &then(onFulfilled: TOnFulFilledBoolean): JPromiseBoolean; overload;
    function &then(onFulfilled: TOnFulFilledBoolean; onRejected: TOnRejected): JPromiseBoolean; overload;
  end;


  TOnFulFilledString = procedure(response: String);

  JPromiseString = class external 'Promise' (JPromise)
  public
    constructor Create(Executor: procedure(resolve: TOnFulFilledString; reject: TOnRejected));
    class function resolve(value: String): JPromiseString;

    function &then(onFulfilled: TOnFulFilledString): JPromiseString; overload;
    function &then(onFulfilled: TOnFulFilledString; onRejected: TOnRejected): JPromiseString; overload;
  end;


  TOnFulFilledStrings = procedure(response: array of String);

  JPromiseStrings = class external 'Promise' (JPromise)
  public
    constructor Create(Executor: procedure(resolve: TOnFulFilledStrings; reject: TOnRejected));
    class function resolve(value: array of String): JPromiseStrings;

    function &then(onFulfilled: TOnFulFilledStrings): JPromiseStrings; overload;
    function &then(onFulfilled: TOnFulFilledStrings; onRejected: TOnRejected): JPromiseStrings; overload;
  end;