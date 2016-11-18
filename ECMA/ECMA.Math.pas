unit ECMA.Math;

type
  JMath = class external 'math'
    function random: Float;
  end;

var
  Math external 'math': JMath;