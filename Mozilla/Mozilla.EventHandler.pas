unit Mozilla.EventHandler;

interface

uses
  Mozilla.Event;

type
  JEventHandlerNonNull = function(event: JEvent): Variant;

  TEventHandler = JEventHandlerNonNull;
  JOnBeforeUnloadEventHandlerNonNull = function(event: JEvent): String;

  TOnBeforeUnloadEventHandler = JOnBeforeUnloadEventHandlerNonNull;
  JOnErrorEventHandlerNonNull = function(event: Union; source: String; lineno: Integer; column: Integer; error: Variant): Boolean;

  TOnErrorEventHandler = JOnErrorEventHandlerNonNull;
  // NoInterfaceObject
  JGlobalEventHandlers = class external 'GlobalEventHandlers'
  public
    onabort: TEventHandler;
    onblur: TEventHandler;
    onfocus: TEventHandler;
    oncanplay: TEventHandler;
    oncanplaythrough: TEventHandler;
    onchange: TEventHandler;
    onclick: TEventHandler;
    oncontextmenu: TEventHandler;
    ondblclick: TEventHandler;
    ondrag: TEventHandler;
    ondragend: TEventHandler;
    ondragenter: TEventHandler;
    ondragexit: TEventHandler;
    ondragleave: TEventHandler;
    ondragover: TEventHandler;
    ondragstart: TEventHandler;
    ondrop: TEventHandler;
    ondurationchange: TEventHandler;
    onemptied: TEventHandler;
    onended: TEventHandler;
    oninput: TEventHandler;
    oninvalid: TEventHandler;
    onkeydown: TEventHandler;
    onkeypress: TEventHandler;
    onkeyup: TEventHandler;
    onload: TEventHandler;
    onloadeddata: TEventHandler;
    onloadedmetadata: TEventHandler;
    onloadend: TEventHandler;
    onloadstart: TEventHandler;
    onmousedown: TEventHandler;
    onmouseenter: TEventHandler; { LenientThis }
    onmouseleave: TEventHandler; { LenientThis }
    onmousemove: TEventHandler;
    onmouseout: TEventHandler;
    onmouseover: TEventHandler;
    onmouseup: TEventHandler;
    onpause: TEventHandler;
    onplay: TEventHandler;
    onplaying: TEventHandler;
    onprogress: TEventHandler;
    onratechange: TEventHandler;
    onreset: TEventHandler;
    onresize: TEventHandler;
    onscroll: TEventHandler;
    onseeked: TEventHandler;
    onseeking: TEventHandler;
    onselect: TEventHandler;
    onshow: TEventHandler;
    onstalled: TEventHandler;
    onsubmit: TEventHandler;
    onsuspend: TEventHandler;
    ontimeupdate: TEventHandler;
    onvolumechange: TEventHandler;
    onwaiting: TEventHandler;
    onselectstart: TEventHandler; { Pref=dom.select_events.enabled }
    ontoggle: TEventHandler; { Pref=dom.details_element.enabled }
    onpointercancel: TEventHandler; { Pref=dom.w3c_pointer_events.enabled }
    onpointerdown: TEventHandler; { Pref=dom.w3c_pointer_events.enabled }
    onpointerup: TEventHandler; { Pref=dom.w3c_pointer_events.enabled }
    onpointermove: TEventHandler; { Pref=dom.w3c_pointer_events.enabled }
    onpointerout: TEventHandler; { Pref=dom.w3c_pointer_events.enabled }
    onpointerover: TEventHandler; { Pref=dom.w3c_pointer_events.enabled }
    onpointerenter: TEventHandler; { Pref=dom.w3c_pointer_events.enabled }
    onpointerleave: TEventHandler; { Pref=dom.w3c_pointer_events.enabled }
    ongotpointercapture: TEventHandler; { Pref=dom.w3c_pointer_events.enabled }
    onlostpointercapture: TEventHandler; { Pref=dom.w3c_pointer_events.enabled }
    onmozfullscreenchange: TEventHandler;
    onmozfullscreenerror: TEventHandler;
    onmozpointerlockchange: TEventHandler; { Pref=pointer-lock-api.prefixed.enabled }
    onmozpointerlockerror: TEventHandler; { Pref=pointer-lock-api.prefixed.enabled }
    onanimationend: TEventHandler;
    onanimationiteration: TEventHandler;
    onanimationstart: TEventHandler;
    ontransitionend: TEventHandler;
    ontransitionrun: TEventHandler;
    ontransitionstart: TEventHandler;
    onwebkitanimationend: TEventHandler;
    onwebkitanimationiteration: TEventHandler;
    onwebkitanimationstart: TEventHandler;
    onwebkittransitionend: TEventHandler;
  end;

  // NoInterfaceObject
  JWindowEventHandlers = class external 'WindowEventHandlers'
  public
    onafterprint: TEventHandler;
    onbeforeprint: TEventHandler;
    onbeforeunload: TOnBeforeUnloadEventHandler;
    onhashchange: TEventHandler;
    onlanguagechange: TEventHandler;
    onmessage: TEventHandler;
    onoffline: TEventHandler;
    ononline: TEventHandler;
    onpagehide: TEventHandler;
    onpageshow: TEventHandler;
    onpopstate: TEventHandler;
    onstorage: TEventHandler;
    onunload: TEventHandler;
  end;

  // NoInterfaceObject
  JOnErrorEventHandlerForNodes = class external 'OnErrorEventHandlerForNodes'
  public
    onerror: TEventHandler;
  end;

  // NoInterfaceObject
  JOnErrorEventHandlerForWindow = class external 'OnErrorEventHandlerForWindow'
  public
    onerror: TOnErrorEventHandler;
  end;