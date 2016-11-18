unit W3C.InputMethodEditorAPI;

interface

uses
  W3C.DOM4, W3C.HTML5, W3C.Geometry;

type
  JInputMethodContext = class external 'InputMethodContext' (JEventTarget)
  public
    oncandidatewindowshow: TEventHandler;
    oncandidatewindowupdate: TEventHandler;
    oncandidatewindowhide: TEventHandler;
    target: JHTMLElement;
    compositionStartOffset: Integer;
    compositionEndOffset: Integer;
    function getCandidateWindowRect: JDOMRectReadOnly;
    function getCompositionAlternatives: array of String;
  end;

  JHTMLElement = partial class external 'HTMLElement'
  public
    inputMethodContext: JInputMethodContext;
  end;