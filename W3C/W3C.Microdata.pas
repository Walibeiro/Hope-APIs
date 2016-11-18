unit W3C.Microdata;

interface

uses
  W3C.DOM4, W3C.HTML5;

type
  JHTMLPropertiesCollection = class external 'HTMLPropertiesCollection' (JHTMLCollection)
  public
    names: array of String;
// TODO    function namedItem(&name: String): JPropertyNodeList;
  end;

  TPropertyValueArray = array of Variant;
  JPropertyNodeList = class external 'PropertyNodeList' (JNodeList)
  public
    function getValues: TPropertyValueArray;
  end;

