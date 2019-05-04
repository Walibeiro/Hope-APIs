unit ECMA.Encode;

interface

function Escape(Input: String): String; external 'escape';
function Unescape(Input: String): String; external 'unescape';

function EncodeURI(uriComponent: String): String; external 'encodeURI';
function EncodeURIComponent(uriComponent: String): String; external 'encodeURIComponent';

function DecodeURI(uriComponent: String): String; external 'decodeURI';
function DecodeURIComponent(uriComponent: String): String; external 'decodeURIComponent';
