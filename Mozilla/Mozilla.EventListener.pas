unit Mozilla.EventListener;

interface

uses
  Mozilla.Event;

type
  JEventListener = class external 'EventListener'
  public
    procedure handleEvent(event: JEvent);
  end;