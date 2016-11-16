unit W3C.HighResolutionTime;

interface

uses
  W3C.DOM4;

type
	TDOMHighResTimeStamp = Float;

	// Exposed = (Window, Worker)
	JPerformance = partial class external 'Performance' (JEventTarget)
	public
		function now: TDOMHighResTimeStamp;
	end;

	// NoInterfaceObject, Exposed = (Window, Worker)
	JGlobalPerformance = class external 'GlobalPerformance'
	public
		performance: JPerformance; { Replaceable } 
	end;

  JWindow = partial class external 'Window' (JEventTarget)
		performance: JPerformance; { Replaceable }
		function now: TDOMHighResTimeStamp;
  end;
