unit Mozilla.HTMLTemplateElement;

interface

type
  JHTMLTemplateElement = class external 'HTMLTemplateElement' (JHTMLElement)
  public
    content: JDocumentFragment;
  end;

implementation

end.
