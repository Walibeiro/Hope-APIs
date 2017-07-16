unit ECMA.Base64;

interface

function atob(Base64: String): String; external 'atob';
function btoa(BinaryData: String): String; external 'btoa';