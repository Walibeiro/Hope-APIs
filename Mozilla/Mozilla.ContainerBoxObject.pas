unit Mozilla.ContainerBoxObject;

interface

type
  // NoInterfaceObject
  JContainerBoxObject = class external 'ContainerBoxObject' (JBoxObject)
  public
    docShell: JnsIDocShell; { ChromeOnly } 
  end;

implementation

end.
