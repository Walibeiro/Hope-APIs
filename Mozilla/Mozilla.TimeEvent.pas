unit Mozilla.TimeEvent;

interface

type
  JTimeEvent = class external 'TimeEvent' (JEvent)
  public
    detail: Integer;
    view: JWindowProxy;
    procedure initTimeEvent(aType: String; aView: JWindow; aDetail: Integer);
  end;

implementation

end.
