unit Mozilla.FileSystemDirectoryEntry;

interface

type
  JFileSystemDirectoryEntry = class external 'FileSystemDirectoryEntry' (JFileSystemEntry)
  public
    function createReader: JFileSystemDirectoryReader;
    procedure getFile; overload;
    procedure getFile(path: JUSVString); overload;
    procedure getFile(path: JUSVString; options: JFileSystemFlags); overload;
    procedure getFile(path: JUSVString; options: JFileSystemFlags; successCallback: JFileSystemEntryCallback); overload;
    procedure getFile(path: JUSVString; options: JFileSystemFlags; successCallback: JFileSystemEntryCallback; errorCallback: JErrorCallback); overload;
    procedure getDirectory; overload;
    procedure getDirectory(path: JUSVString); overload;
    procedure getDirectory(path: JUSVString; options: JFileSystemFlags); overload;
    procedure getDirectory(path: JUSVString; options: JFileSystemFlags; successCallback: JFileSystemEntryCallback); overload;
    procedure getDirectory(path: JUSVString; options: JFileSystemFlags; successCallback: JFileSystemEntryCallback; errorCallback: JErrorCallback); overload;
  end;

implementation

end.
