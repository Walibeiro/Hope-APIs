unit Mozilla.ImageData;

interface

type
  // Constructor( unsigned long sw , unsigned long sh),Constructor( Uint8ClampedArray data , unsigned long sw , optional unsigned long sh),Exposed=( Window , Worker)
  JImageData = class external 'ImageData'
  public
    width: Integer; { Constant } 
    height: Integer; { Constant } 
    data: JUint8ClampedArray; { Constant,StoreInSlot } 
  end;

implementation

end.
