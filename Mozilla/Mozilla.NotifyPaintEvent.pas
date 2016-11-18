unit Mozilla.NotifyPaintEvent;

interface

type
  JNotifyPaintEvent = class external 'NotifyPaintEvent' (JEvent)
  public
    clientRects: JDOMRectList;
    boundingClientRect: JDOMRect;
    paintRequests: JPaintRequestList;
    transactionId: Integer;
  end;

implementation

end.
