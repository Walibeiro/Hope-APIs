unit Mozilla.SVGPreserveAspectRatio;

interface

type
  JSVGPreserveAspectRatio = class external 'SVGPreserveAspectRatio'
  const 
    SVG_PRESERVEASPECTRATIO_UNKNOWN: Integer = 0;
    SVG_PRESERVEASPECTRATIO_NONE: Integer = 1;
    SVG_PRESERVEASPECTRATIO_XMINYMIN: Integer = 2;
    SVG_PRESERVEASPECTRATIO_XMIDYMIN: Integer = 3;
    SVG_PRESERVEASPECTRATIO_XMAXYMIN: Integer = 4;
    SVG_PRESERVEASPECTRATIO_XMINYMID: Integer = 5;
    SVG_PRESERVEASPECTRATIO_XMIDYMID: Integer = 6;
    SVG_PRESERVEASPECTRATIO_XMAXYMID: Integer = 7;
    SVG_PRESERVEASPECTRATIO_XMINYMAX: Integer = 8;
    SVG_PRESERVEASPECTRATIO_XMIDYMAX: Integer = 9;
    SVG_PRESERVEASPECTRATIO_XMAXYMAX: Integer = 10;
    SVG_MEETORSLICE_UNKNOWN: Integer = 0;
    SVG_MEETORSLICE_MEET: Integer = 1;
    SVG_MEETORSLICE_SLICE: Integer = 2;
  public
    align: Integer; { SetterThrows } 
    meetOrSlice: Integer; { SetterThrows } 
  end;

implementation

end.
