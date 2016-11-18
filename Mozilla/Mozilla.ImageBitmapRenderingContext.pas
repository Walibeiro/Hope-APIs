unit Mozilla.ImageBitmapRenderingContext;

interface

type
  // Exposed=( Window , Worker)
  JImageBitmapRenderingContext = class external 'ImageBitmapRenderingContext'
  public
    procedure transferFromImageBitmap(bitmap: JImageBitmap);
    procedure transferImageBitmap(bitmap: JImageBitmap); { Deprecated=ImageBitmapRenderingContext_TransferImageBitmap } 
  end;

implementation

end.
