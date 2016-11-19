unit W3C.Geofencing;

interface

uses
  W3C.DOM4, W3C.ServiceWorkers;

type
  JGeofenceQueryOptions = class external 'GeofenceQueryOptions'
  public
    &name: String;
  end;

  JGeofenceOptions = class external 'GeofenceOptions'
  public
    includePosition: Boolean;
  end;

  JGeofenceRegionInit = class external 'GeofenceRegionInit'
  public
    &name: String;
  end;

  // Exposed = (Window, Worker)
  JGeofenceRegion = class external 'GeofenceRegion'
  public
    name: String;
  end;

  JGeofence = class external 'Geofence'
  public
    id: String;
    region: JGeofenceRegion;
    function remove: boolean;
  end;

  // Exposed = (Window, Worker)
  JGeolocationPoint = class external 'GeolocationPoint'
  public
    latitude: Float;
    longitude: Float;
  end;

  JCircularGeofenceRegionInit = class external 'CircularGeofenceRegionInit'
  public
    latitude: Float;
    longitude: Float;
    radius: Float;
  end;

  // Exposed = (Window, Worker)
  JCircularGeofenceRegion = class external 'CircularGeofenceRegion' (JGeofenceRegion)
  public
    center: JGeolocationPoint;
    radius: Float;
    constructor Create(init: JCircularGeofenceRegionInit);
  end;

  JServiceWorkerGlobalScope = partial class external 'ServiceWorkerGlobalScope'
  public
    ongeofenceenter: TEventHandler;
    ongeofenceleave: TEventHandler;
    ongeofenceerror: TEventHandler;
  end;

  // Exposed = ServiceWorker
  JGeofenceEvent = class external 'GeofenceEvent' (JExtendableEvent)
  public
    geofence: JGeofence;
// TODO    position: JPosition;
  end;

  // Exposed = ServiceWorker
  JGeofenceErrorEvent = class external 'GeofenceErrorEvent' (JExtendableEvent)
  public
    geofence: JGeofence;
    code: Integer;
    message: String;
  end;

  // NoInterfaceObject
  JGeofenceManager = class external 'GeofenceManager'
  public
    function add(initialRegion: JGeofenceRegion): JGeofence; overload;
    function add(initialRegion: JGeofenceRegion; options: JGeofenceOptions): JGeofence; overload;
    function getAll: array of JGeofence; overload;
    function getAll(options: JGeofenceQueryOptions): array of JGeofence; overload;
    function getById(id: String): JGeofence;
  end;

  JServiceWorkerRegistration = partial class external 'ServiceWorkerRegistration'
  public
    geofencing: JGeofenceManager;
  end;