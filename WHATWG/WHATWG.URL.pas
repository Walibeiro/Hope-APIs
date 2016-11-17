unit WHATWG.URL;

interface

type
  // Exposed = (Window, Worker)
  JURLSearchParams = class external 'URLSearchParams'
  public
    constructor create; overload;
    constructor create(init: String); overload;
    constructor create(init: JURLSearchParams); overload;
    procedure append(&name: String; value: String);
    procedure delete(&name: String);
    function get(&name: String): String;
    function getAll(&name: String): array of String;
    function has(&name: String): Boolean;
    procedure set(&name: String; value: String);
  end;

  // Exposed = (Window, Worker)
  JURL = class external 'URL'
  public
    origin: String;
    protocol: String;
    username: String;
    password: String;
    host: String;
    hostname: String;
    port: String;
    pathname: String;
    search: String;
    searchParams: JURLSearchParams; { SameObject }
    hash: String;
    constructor Create (url: String); overload;
    constructor Create (url, base: String); overload;
  end;