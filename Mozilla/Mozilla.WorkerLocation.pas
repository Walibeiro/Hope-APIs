unit Mozilla.WorkerLocation;

interface

type
  // Exposed=Worker
  JWorkerLocation = class external 'WorkerLocation'
  public
    href: JUSVString;
    origin: JUSVString;
    protocol: JUSVString;
    host: JUSVString;
    hostname: JUSVString;
    port: JUSVString;
    pathname: JUSVString;
    search: JUSVString;
    hash: JUSVString;
  end;

implementation

end.
