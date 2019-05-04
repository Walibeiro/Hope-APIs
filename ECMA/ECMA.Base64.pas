unit ECMA.Base64;

interface

uses
  ECMA.TypedArray;

function atob(Base64: String): String; overload; external 'atob';
function atob(Base64: JTypedArray): String; overload; external 'atob';
function btoa(BinaryData: String): String; overload; external 'btoa';
function btoa(BinaryData: JTypedArray): String; overload; external 'btoa';