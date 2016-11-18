unit W3C.FileSystemAPI;

interface

uses
  W3C.FileAPI;

type
  JCreateIfExistsMode = String;
  JCreateIfExistsModeHelper = strict helper for JCreateIfExistsMode
    const Replace = 'replace';
    const Fail = 'fail';
  end;

  JOpenIfExistsMode = String;
  JOpenIfExistsModeHelper = strict helper for JOpenIfExistsMode
    const Open = 'open';
    const Fail = 'fail';
  end;

  JOpenIfNotExistsMode = String;
  JOpenIfNotExistsModeHelper = strict helper for JOpenIfNotExistsMode
    const Create = 'create';
    const Fail = 'fail';
  end;

  JFileOpenMode = String;
  JFileOpenModeHelper = strict helper for JFileOpenMode
    const Readonly = 'readonly';
    const Readwrite = 'readwrite';
  end;

  TFileOrDirectorySequence = array of Variant; // TODO

  JFileHandle = class external 'FileHandle'
  public
    mode: JFileOpenMode;
    active: Boolean;
    offset: Integer;
    function getFile: JFile;
//    CancelablePromise<ArrayBuffer> read (unsigned long long size);
  end;

  JFileHandleWritable = class external 'FileHandleWritable' (JFileHandle)
  public
//    CancelablePromise<void> write ((DOMString or ArrayBuffer or ArrayBufferView or Blob) value);
    procedure setSize; overload; // TODO: returns a promise
    procedure setSize(size: Integer); overload; // TODO: returns a promise
  end;

  JCreateFileOptions = class external 'CreateFileOptions'
  public
    ifExists: JCreateIfExistsMode;
    data: Variant; // TODO
  end;

  JOpenWriteOptions = class external 'OpenWriteOptions'
  public
    ifNotExists: JOpenIfNotExistsMode;
    ifExists: JOpenIfExistsMode;
    Flush: Boolean;
  end;

  // Exposed = Window, Worker
  JDirectory = partial class external 'Directory'
  public
    name: String;
    function createFile(path: String; options: JCreateFileOptions): JFile;
    function createDirectory(path: String): JDirectory;
    function get(path: String): Variant; // TODO
//    CancelablePromise<void>          move ((DOMString or File or Directory) path, (DOMString or Directory or DestinationDict) dest);
    function remove(path: Variant): boolean; // TODO
    function removeDeep(path: Variant): boolean; // TODO
    function openRead(path: Variant): JFileHandle; // TODO
    function openWrite(path: Variant; options: JOpenWriteOptions): JFileHandleWritable; // TODO
    function getFilesAndDirectories: TFileOrDirectorySequence; // TODO
//    Observable<(File or Directory)>  enumerate (optional DOMString path);
//    Observable<(File)>               enumerateDeep (optional DOMString path);
  end;

  JDestinationDict = class external 'DestinationDict'
  public
    dir: JDirectory;
    &name: String;
  end;

  JNavigator = partial class external 'Navigator'
  public
    function getFileSystem: JDirectory;
  end;