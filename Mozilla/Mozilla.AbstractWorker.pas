unit Mozilla.AbstractWorker;

interface

uses
  Mozilla.EventHandler;

type
  // NoInterfaceObject,Exposed=( Window , Worker , System)
  JAbstractWorker = class external 'AbstractWorker'
  public
    onerror: JEventHandler;
  end;