unit W3C.ElementTraversal;

interface

uses
  W3C.DOM4;

type
  JElementTraversal = class external 'ElementTraversal'
  public
    firstElementChild: JElement;
    lastElementChild: JElement;
    previousElementSibling: JElement;
    nextElementSibling: JElement;
    childElementCount: Integer;
  end;