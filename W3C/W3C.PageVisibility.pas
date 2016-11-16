unit W3C.PageVisibility;

interface

uses
  W3C.DOM4;

type
  JVisibilityState = String;
  JVisibilityStateHelper = strict helper for JVisibilityState
    const Hidden = 'hidden';
    const Visible = 'visible';
    const Prerender = 'prerender';
    const Unloaded = 'unloaded';
  end;

  JDocument = partial class external 'Document' (JNode)
  public
    hidden: Boolean;
    visibilityState: JVisibilityState;
  end;