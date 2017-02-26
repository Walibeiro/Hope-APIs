unit W3C.BackgroundTasks;

interface

type
	JIdleRequestOptions = class external 'IdleRequestOptions'
	public
		timeout: Integer;
	end;

	JIdleDeadline = class external 'IdleDeadline'
	public
		didTimeout: Boolean;
		function timeRemaining: JDOMHighResTimeStamp;
	end;

	TIdleRequestCallback = procedure(deadline: JIdleDeadline);

	JWindow = partial class external 'Window'
	public
		function requestIdleCallback(Callback: TIdleRequestCallback): Integer; overload;
		function requestIdleCallback(Callback: TIdleRequestCallback; options: JIdleRequestOptions): Integer; overload;
		procedure cancelIdleCallback(handle: Integer);
	end;