unit W3C.WebDriver;

interface

uses
  W3C.HTML5;

type
  JNavigator = partial class external 'Navigator'
  public
    webdriver: Boolean;
  end;