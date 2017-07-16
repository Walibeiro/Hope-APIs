unit ECMA.Encode;

interface

function EncodeURI(uriComponent: String): String; external 'encodeURI';
function EncodeURIComponent(uriComponent: String): String; external 'encodeURIComponent';

function DecodeURI(uriComponent: String): String; external 'decodeURI';
function DecodeURIComponent(uriComponent: String): String; external 'decodeURIComponent';
