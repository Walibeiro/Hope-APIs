unit Mozilla.XMLStylesheetProcessingInstruction;

interface

type
  JXMLStylesheetProcessingInstruction = class external 'XMLStylesheetProcessingInstruction' (JProcessingInstruction)
  public
    sheet: JStyleSheet;
  end;