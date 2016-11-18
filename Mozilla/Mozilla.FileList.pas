unit Mozilla.FileList;

interface

type
  JFileList = class external 'FileList'
  public
    length: Integer;
    function item(&index: Integer): JFile;
  end;

implementation

end.
