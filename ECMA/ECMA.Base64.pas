unit ECMA.Base64;

interface

uses
  ECMA.TypedArray;

function atob(Base64: String): String; external 'atob'; overload;
function atob(Base64: JTypedArray): String; external 'atob'; overload;
function btoa(BinaryData: String): String; external 'btoa'; overload;
function btoa(BinaryData: JTypedArray): String; external 'btoa'; overload;