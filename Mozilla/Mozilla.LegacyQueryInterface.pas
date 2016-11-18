unit Mozilla.LegacyQueryInterface;

interface

type
  // NoInterfaceObject,Exposed=( Window , Worker , System)
  JLegacyQueryInterface = class external 'LegacyQueryInterface'
  public
    function queryInterface(iid: JIID): JnsISupports; { Exposed=Window } 
  end;

implementation

end.
