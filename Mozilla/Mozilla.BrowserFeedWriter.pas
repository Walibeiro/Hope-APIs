unit Mozilla.BrowserFeedWriter;

interface

type
  // JSImplementation=@mozilla.org/browser/feeds/result-writer;1,Func=mozilla::FeedWriterEnabled::IsEnabled,Constructor
  JBrowserFeedWriter = class external 'BrowserFeedWriter'
  public
    procedure writeContent;
    procedure close;
  end;

implementation

end.
