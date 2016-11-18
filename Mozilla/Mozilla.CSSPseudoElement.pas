unit Mozilla.CSSPseudoElement;

interface

type
  // Func=nsDocument::IsWebAnimationsEnabled
  JCSSPseudoElement = class external 'CSSPseudoElement'
  public
    type: String;
    parentElement: JElement;
  end;

implementation

end.
