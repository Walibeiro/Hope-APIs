unit W3C.MediaAnnotation;

interface

type
  JMetadataSource = class external 'MetadataSource'
  public
    metadataSource: String;
    sourceFormat: String;
  end;

  JMediaAnnotation = class external 'MediaAnnotation'
  public
    propertyName: String;
    value: String;
    language: String;
    sourceFormat: String;
    fragmentIdentifier: String;
    mappingType: String;
    statusCode: Integer;
  end;

  JIdentifier = class external 'Identifier' (JMediaAnnotation)
  public
    identifierLink: String;
  end;

  JTitle = class external 'Title' (JMediaAnnotation)
  public
    titleLabel: String;
    typeLink: String;
    typeLabel: String;
  end;

  JLanguage = class external 'Language' (JMediaAnnotation)
  public
    languageLink: String;
    languageLabel: String;
  end;

  JLocator = class external 'Locator' (JMediaAnnotation)
  public
    locatorLink: String;
  end;

  JContributor = class external 'Contributor' (JMediaAnnotation)
  public
    contributorLink: String;
    contributorLabel: String;
    roleLink: String;
    roleLabel: String;
  end;

  JCreator = class external 'Creator' (JMediaAnnotation)
  public
    creatorLink: String;
    creatorLabel: String;
    roleLink: String;
    roleLabel: String;
  end;

  JMADate = class external 'MADate' (JMediaAnnotation)
  public
    date: String;
    typeLink: String;
    typeLabel: String;
  end;

  JLocation = class external 'Location' (JMediaAnnotation)
  public
    locationLink: String;
    locationLabel: String;
    longitude: Float;
    latitude: Float;
    altitude: Float;
    coordinateSystemLabel: String;
    coordinateSystemLink: String;
  end;

  JDescription = class external 'Description' (JMediaAnnotation)
  public
    descriptionLabel: String;
  end;

  JKeyword = class external 'Keyword' (JMediaAnnotation)
  public
    keywordLink: String;
    keywordLabel: String;
  end;

  JGenre = class external 'Genre' (JMediaAnnotation)
  public
    genreLink: String;
    genreLabel: String;
  end;

  JRating = class external 'Rating' (JMediaAnnotation)
  public
    ratingValue: Float;
    ratingSystemLink: String;
    ratingSystemLabel: String;
    min: Float;
    max: Float;
  end;

  JRelation = class external 'Relation' (JMediaAnnotation)
  public
    targetLink: String;
    targetLabel: String;
    typeLink: String;
    typeLabel: String;
  end;

  JCollection = class external 'Collection' (JMediaAnnotation)
  public
    collectionLink: String;
    collectionLabel: String;
  end;

  JCopyright = class external 'Copyright' (JMediaAnnotation)
  public
    copyrightLabel: String;
    holderLink: String;
    holderLabel: String;
  end;

  JPolicy = class external 'Policy' (JMediaAnnotation)
  public
    statementLink: String;
    statementLabel: String;
    typeLink: String;
    typeLabel: String;
  end;

  JPublisher = class external 'Publisher' (JMediaAnnotation)
  public
    publisherLink: String;
    publisherLabel: String;
  end;

  JTargetAudience = class external 'TargetAudience' (JMediaAnnotation)
  public
    audienceLink: String;
    audienceLabel: String;
    classificationSystemLink: String;
    classificationSystemLabel: String;
  end;

  JFragment = class external 'Fragment' (JMediaAnnotation)
  public
    identifier: String;
    roleLink: String;
    roleLabel: String;
  end;

  JNamedFragment = class external 'NamedFragment' (JMediaAnnotation)
  public
    identifier: String;
    label: String;
  end;

  JFrameSize = class external 'FrameSize' (JMediaAnnotation)
  public
    width: Float;
    height: Float;
    &unit: String;
  end;

  JCompression = class external 'Compression' (JMediaAnnotation)
  public
    compressionLink: String;
    compressionLabel: String;
  end;

  JDuration = class external 'Duration' (JMediaAnnotation)
  public
    duration: Float;
  end;

  JFormat = class external 'Format' (JMediaAnnotation)
  public
    formatLink: String;
    formatLabel: String;
  end;

  JSamplingRate = class external 'SamplingRate' (JMediaAnnotation)
  public
    samplingRate: Float;
  end;

  JFrameRate = class external 'FrameRate' (JMediaAnnotation)
  public
    frameRate: Float;
  end;

  JAverageBitRate = class external 'AverageBitRate' (JMediaAnnotation)
  public
    averageBitRate: Float;
  end;

  JNumTracks = class external 'NumTracks' (JMediaAnnotation)
  public
    number: Integer;
    typeString: String;
  end;

  JMediaResource = class external 'MediaResource'
  public
    function getSupportedModes: Integer;
    function createMediaResource(mediaResource: String): JMediaResource; overload;
    function createMediaResource(mediaResource: String; metadataSources: array of JMetadataSource): JMediaResource; overload;
    function createMediaResource(mediaResource: String; metadataSources: array of JMetadataSource; mode: Integer): JMediaResource; overload;
  end;

  JPropertyCallback = class external 'PropertyCallback'
  public
    procedure handleEvent(mediaAnnotations: array of JMediaAnnotation);
  end;

  JMetadataCallback = class external 'MetadataCallback'
  public
    procedure handleEvent(metadata: array of String);
  end;

  JErrorCallback = class external 'ErrorCallback'
  public
    procedure handleEvent(errorStatus: String);
  end;

  JAsyncMediaResource = class external 'AsyncMediaResource' (JMediaResource)
  public
    procedure getMediaProperty(propertyNames: array of String; successCallback: JPropertyCallback; errorCallback: JErrorCallback); overload;
    procedure getMediaProperty(propertyNames: array of String; successCallback: JPropertyCallback; errorCallback: JErrorCallback; fragment: String); overload;
    procedure getMediaProperty(propertyNames: array of String; successCallback: JPropertyCallback; errorCallback: JErrorCallback; fragment, sourceFormat: String); overload;
    procedure getMediaProperty(propertyNames: array of String; successCallback: JPropertyCallback; errorCallback: JErrorCallback; fragment, sourceFormat, language: String); overload;
    procedure getOriginalMetadata(sourceFormat: String; successCallback: JMetadataCallback; errorCallback: JErrorCallback);
  end;

  JSyncMediaResource = class external 'SyncMediaResource' (JMediaResource)
  public
    function getMediaProperty(propertyNames: array of String): array of JMediaAnnotation; overload;
    function getMediaProperty(propertyNames: array of String; fragment: String): array of JMediaAnnotation; overload;
    function getMediaProperty(propertyNames: array of String; fragment, sourceFormat: String): array of JMediaAnnotation; overload;
    function getMediaProperty(propertyNames: array of String; fragment, sourceFormat, language: String): array of JMediaAnnotation; overload;
    function getOriginalMetadata(sourceFormat: String): array of String;
  end;
