unit W3C.AudioOutputDevices;

interface

uses
  ECMA.Promise, W3C.HTML5;

type
  JHTMLMediaElement = partial class external 'HTMLMediaElement'
  public
    sinkId: String;
    function setSinkId(sinkId: String): JPromise;
  end;