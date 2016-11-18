unit Mozilla.CaretStateChangedEvent;

interface

type
  JCaretChangedReason = (ccrVisibilitychange, ccrUpdateposition, ccrLongpressonemptycontent, ccrTaponcaret, ccrPresscaret, ccrReleasecaret, ccrScroll);

  JCaretStateChangedEventInit = class external 'CaretStateChangedEventInit' (JEventInit)
  public
    collapsed: Boolean;
    boundingClientRect: JDOMRectReadOnly;
    reason: JCaretChangedReason;
    caretVisible: Boolean;
    caretVisuallyVisible: Boolean;
    selectionVisible: Boolean;
    selectionEditable: Boolean;
    selectedTextContent: String;
  end;

  // Constructor( DOMString type , optional CaretStateChangedEventInit eventInit),ChromeOnly
  JCaretStateChangedEvent = class external 'CaretStateChangedEvent' (JEvent)
  public
    collapsed: Boolean;
    boundingClientRect: JDOMRectReadOnly;
    reason: JCaretChangedReason;
    caretVisible: Boolean;
    caretVisuallyVisible: Boolean;
    selectionVisible: Boolean;
    selectionEditable: Boolean;
    selectedTextContent: String;
  end;

implementation

end.
