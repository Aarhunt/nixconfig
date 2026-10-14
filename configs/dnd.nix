# Obsidian Nix Export - generated 2026-10-02

{
  config = {
      app = {
        settingsPopoutWindow = false;
      };
      appearance = {
        cssTheme = "ITS Theme";
      };
      core-plugins = {
        audio-recorder = false;
        backlink = true;
        bases = true;
        bookmarks = true;
        canvas = true;
        command-palette = true;
        daily-notes = true;
        editor-status = true;
        file-explorer = true;
        file-recovery = true;
        footnotes = false;
        global-search = true;
        graph = true;
        markdown-importer = false;
        note-composer = true;
        outgoing-link = true;
        outline = true;
        page-preview = true;
        properties = true;
        publish = false;
        random-note = false;
        slash-command = false;
        slides = false;
        switcher = true;
        sync = true;
        tag-pane = true;
        templates = true;
        webviewer = false;
        word-count = true;
        workspaces = false;
        zk-prefixer = false;
      };
      hotkeys = {
        "quickadd:choice:2bbc095d-5565-4122-bb9d-c9c0ebcb3b27" = [
          {
            key = "N";
            modifiers = [
              "Alt"
              "Mod"
            ];
          }
        ];
      };
      workspace = { };
    };

  plugins = {
      atlas-vtt = {
        manifest = {
          author = "Fabian Urbanek";
          authorUrl = "https://github.com/ByteMirror";
          description = "Run tabletop RPG battle maps with tokens, fog of war, grids, dice and a separate player view.";
          id = "atlas-vtt";
          isDesktopOnly = true;
          minAppVersion = "1.8.7";
          name = "Atlas VTT";
          version = "0.4.2";
        };
        settings = null;
      };
      nixsync = {
        manifest = {
          author = "rowmayne";
          authorUrl = "https://github.com/rowmayne";
          description = "Export and import vault settings and plugins as Nix.";
          id = "nixsync";
          isDesktopOnly = true;
          minAppVersion = "0.15.0";
          name = "Nixsync";
          version = "1.0.0";
        };
        settings = null;
      };
      obsidian-5e-statblocks = {
        manifest = {
          author = "Jeremy Valentine";
          authorUrl = "";
          description = "Create Fantasy Statblocks in Obsidian.md";
          fundingUrl = "https://www.buymeacoffee.com/valentine195";
          id = "obsidian-5e-statblocks";
          isDesktopOnly = false;
          minAppVersion = "0.12.0";
          name = "Fantasy Statblocks";
          version = "4.10.3";
        };
        settings = {
          alwaysImport = false;
          atomicWrite = false;
          autoParse = false;
          debug = false;
          default = "basic-5e-layout";
          defaultLayouts = { };
          defaultLayoutsIntegrated = true;
          disableSRD = false;
          export = true;
          hideConditionHelp = false;
          layouts = [ ];
          monsters = [ ];
          notifiedOfFantasy = false;
          paths = [
            "/"
          ];
          renderDice = false;
          showAdvanced = false;
          tryToRenderLinks = true;
          useDice = true;
          version = {
            major = 4;
            minor = 10;
            patch = 3;
          };
        };
      };
      obsidian-livesync = {
        manifest = {
          author = "vorotamoroz";
          authorUrl = "https://github.com/vrtmrz";
          description = "Community implementation of self-hosted livesync. Reflect your vault changes to some other devices immediately. Please make sure to disable other synchronize solutions to avoid content corruption or duplication.";
          id = "obsidian-livesync";
          isDesktopOnly = false;
          minAppVersion = "1.7.2";
          name = "Self-hosted LiveSync";
          version = "1.0.33";
        };
        settings = {
          E2EEAlgorithm = "v2";
          P2P_ActiveRemoteConfigurationId = "";
          P2P_AppID = "self-hosted-livesync";
          P2P_AutoAccepting = 0;
          P2P_AutoAcceptingPeers = "";
          P2P_AutoBroadcast = false;
          P2P_AutoDenyingPeers = "";
          P2P_AutoStart = false;
          P2P_AutoSyncPeers = "";
          P2P_AutoWatchPeers = "";
          P2P_DevicePeerName = "";
          P2P_Enabled = false;
          P2P_IsHeadless = false;
          P2P_RebuildFrom = "";
          P2P_SyncOnReplication = "";
          P2P_connectionPath = "automatic";
          P2P_maxWirePayloadBytes = 15360;
          P2P_passphrase = "";
          P2P_relays = "wss://exp-relay.vrtmrz.net/";
          P2P_roomID = "";
          P2P_turnCredential = "";
          P2P_turnServers = "";
          P2P_turnUsername = "";
          P2P_useDiagRTC = false;
          accessKey = "";
          activeConfigurationId = "legacy-couchdb";
          additionalSuffixOfDatabaseName = "c695e70f3d01359e";
          allowSleepDuringSynchronisation = false;
          allowSleepDuringSynchronisationOnDesktop = true;
          autoSweepPlugins = false;
          autoSweepPluginsPeriodic = false;
          automaticallyDeleteMetadataOfDeletedFiles = 0;
          batchSave = false;
          batchSaveMaximumDelay = 60;
          batchSaveMinimumDelay = 5;
          batch_size = 25;
          batches_limit = 25;
          bucket = "";
          bucketCustomHeaders = "";
          bucketPrefix = "";
          checkConflictOnlyOnOpen = false;
          checkIntegrityOnSave = false;
          chunkSplitterVersion = "v3-rabin-karp";
          concurrencyOfReadChunksOnline = 40;
          configPassphraseStore = "";
          couchDB_CustomHeaders = "";
          couchDB_DBNAME = "";
          couchDB_PASSWORD = "";
          couchDB_URI = "";
          couchDB_USER = "";
          customChunkSize = 60;
          deleteMetadataOfDeletedFiles = false;
          deviceAndVaultName = "";
          disableCheckingConfigMismatch = false;
          disableMarkdownAutoMerge = false;
          disableRequestURI = true;
          disableWorkerForGeneratingChunks = false;
          displayLanguage = "def";
          doNotDeleteFolder = false;
          doNotPaceReplication = false;
          doNotSuspendOnFetching = false;
          doNotUseFixedRevisionForChunks = true;
          doctorProcessedVersion = "0.25.27";
          enableChunkSplitterV2 = false;
          enableCompression = false;
          enableDebugTools = false;
          encrypt = true;
          encryptInternalMetadata = false;
          encryptedCouchDBConnection = "%\$4iIZJx+MEUydDsuXowTIJP9er5n395XWWmo4zrKlPy64g2YrsjsROQA7skhg6/DgKejySwiH8pjRAThLvuaSV+E8lZPlzs/19PH3nh9s7f7/I/D0MiQHfDrDOOlpQeU5befCUcKxEcinZzIaQejIP5dvcGKJqyWyfn1mVxWhDLDQK53lGaiEfaVaVQse3gQIE0oGpq+XTSiCQdt8AINvvg2IB4NJwG+wDGsyYp/RGRLHVpgrAaxOnR8ycR3ex1SlwFvbr9KBSVp2GgDekHohDcQYj+B3h+tLyFNV/yAf9z3bdN5F9U9215v/O2e8Gk3Vo7JzS/+VyIMiSqR8742nrpGZUNeK1X0roNkeectsDA3MIqtrKR52LMNmVjwI99LVA3fFZbN8OIYheGHgiw+I2M2NUa5JnAL+2xNxr/WVRO3At3i7zZePtQG3RcQdFuUpH6zs/ILwPdqtnIj53T8GcGN7qIdZs9QgJHSa3XOtfTQB7oa7okIOo5P3cBEouPxX6zfVZHAWVStGbAVwDSpNCr3ZH914dTCpo2dkydS1yl6QrWec9VySgl2Ug4zLHn2NDA6WZ30ypq1ltUFIyauTSPea5bLbFaZ6CfV2c4+Cega/7eEcoaWE0VQn16h9n0o0KiX1mcBiE8s2r0HkDikRLfDDsFBlSjdd3X8Pmo7E83cbsy8D+zOQRNo8aPcMA17hbZdeWFQZDQJx8zMHZt9MwteOF10U7VrBkBVxj+lEZ+O05Jl3vkCwkJU=";
          encryptedIdDerivationKey = "";
          encryptedPassphrase = "%\$4iIZJx+MEUydDsuXowTIJP9er5n395XWWmo4zrKlPy5zlR7Gyc1wchgxN6UjXP83KdW8yfcVK41c7ZunPc7oKgYQOcKBdnrjxu6mNuAJPnD7/4Sn2VCRprQ+c3gc/D+KL5964AQzGZhFFePusI3lS4mDIZlV8IFW3fCpSRR+dSLbJ6l71qPwTA==";
          endpoint = "";
          forcePathStyle = true;
          gcDelay = 0;
          handleFilenameCaseSensitive = false;
          hashAlg = "xxhash64";
          hashCacheMaxAmount = 50;
          hashCacheMaxCount = 300;
          hideFileWarningNotice = false;
          idDerivationKey = "";
          idDerivationVersion = 0;
          ignoreFiles = ".gitignore";
          ignoreVersionCheck = false;
          isConfigured = true;
          jwtAlgorithm = "";
          jwtExpDuration = 5;
          jwtKey = "";
          jwtKid = "";
          jwtSub = "";
          keepReplicationActiveInBackground = false;
          lastReadUpdates = 25;
          lessInformationInLog = false;
          liveSync = false;
          longLineThreshold = 250;
          maxAgeInEden = 10;
          maxChunksInEden = 10;
          maxMTimeForReflectEvents = 0;
          maxTotalLengthInEden = 1024;
          minimumChunkSize = 20;
          minimumIntervalOfReadChunksOnline = 50;
          networkWarningStyle = "";
          notifyAllSettingSyncFile = false;
          notifyPluginOrSettingUpdated = false;
          notifyThresholdOfRemoteStorageSize = -1;
          passphrase = "";
          periodicReplication = false;
          periodicReplicationInterval = 60;
          permitEmptyPassphrase = false;
          pluginSyncExtendedSetting = { };
          processSizeMismatchedFiles = false;
          processSmallFilesInUIThread = false;
          readChunksOnline = true;
          region = "";
          remoteConfigurations = {
            legacy-couchdb = {
              id = "legacy-couchdb";
              isEncrypted = true;
              name = "CouchDB Remote";
              uri = "%\$4iIZJx+MEUydDsuXowTIJP9er5n395XWWmo4zrKlPy4JBqF5NJ8yWFr1lE6Mo3Qg+cy9x3qE9XWTtGcLYu/6E+xz/3R+Ud2hAH/L67NDz2jOJRMEDCuegZVDHGCVL/f9on4f9oPTcnRUGbVg2KDRJTNsijgNNyN1yUTFA6eRGkdgv+YYJGISLvXur+iDGx8esm4ACFgOPqli1aBOJKLGkAXILGT49PwoIriyueC0YoE7CAvnk7saBj0LgOyrkK9gMrHqHLLnJGS7gPA+";
            };
          };
          remoteType = "";
          resolveConflictsByNewerFile = false;
          savingDelay = 200;
          secretKey = "";
          sendChunksBulk = false;
          sendChunksBulkMaxSize = 1;
          settingSyncFile = "";
          settingVersion = 10;
          showLongerLogInsideEditor = false;
          showMergeDialogOnlyOnActive = false;
          showOnlyIconsOnEditor = false;
          showOwnPlugins = false;
          showStatusOnEditor = true;
          showStatusOnStatusbar = true;
          showVerboseLog = false;
          skipOlderFilesOnSync = true;
          suppressNotifyHiddenFilesChange = false;
          suspendFileWatching = false;
          suspendParseReplicationResult = false;
          syncAfterMerge = false;
          syncIgnoreRegEx = "";
          syncInternalFileOverwritePatterns = "";
          syncInternalFiles = false;
          syncInternalFilesBeforeReplication = false;
          syncInternalFilesIgnorePatterns = "\\/node_modules\\/, \\/\\.git\\/, \\/obsidian-livesync\\/";
          syncInternalFilesInterval = 60;
          syncInternalFilesTargetPatterns = "";
          syncMaxSizeInMB = 50;
          syncMinimumInterval = 2000;
          syncOnEditorSave = false;
          syncOnFileOpen = false;
          syncOnSave = false;
          syncOnStart = false;
          syncOnlyRegEx = "";
          trashInsteadDelete = true;
          tweakModified = 1790938687542;
          useAdvancedMode = false;
          useCustomRequestHandler = false;
          useDynamicIterationCount = false;
          useEden = false;
          useEdgeCaseMode = false;
          useHistory = true;
          useIgnoreFiles = false;
          useIndexedDBAdapter = false;
          useJWT = false;
          useOnlyLocalChunk = false;
          usePathObfuscation = false;
          usePluginEtc = false;
          usePluginSettings = false;
          usePluginSync = false;
          usePluginSyncV2 = true;
          usePowerUserMode = false;
          useRequestAPI = false;
          useSegmenter = false;
          useTimeouts = false;
          versionUpFlash = "";
          watchInternalFileChanges = true;
          writeCredentialsForSettingSync = false;
          writeDocumentsIfConflicted = false;
          writeLogToTheFile = false;
        };
      };
      obsidian-style-settings = {
        manifest = {
          author = "mgmeyers";
          authorUrl = "https://github.com/mgmeyers/obsidian-style-settings";
          description = "Offers controls for adjusting theme, plugin, and snippet CSS variables.";
          id = "obsidian-style-settings";
          isDesktopOnly = false;
          minAppVersion = "0.11.5";
          name = "Style Settings";
          version = "1.0.9";
        };
        settings = {
          "ITS@@select" = "dnd";
        };
      };
    };
}
