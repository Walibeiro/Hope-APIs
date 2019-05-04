unit ECMA.Math;

type
  JMath = class external 'math'
    function pow(base: Integer; exponent: Integer): Integer; overload;
    function pow(base: Float; exponent: Float): Float; overload;
    function random: Float;
    E: Float;
    LN10: Float;
    LN2: Float;
    LOG2E: Float;
    PI: Float;
    SQRT1_2: Float;
    SQRT2: Float;
  end;

var
  Math external 'Math': JMath;