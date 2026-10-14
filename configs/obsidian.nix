# Obsidian Nix Export - generated 2026-10-02

{
  config = {
      app = {
        newFileLocation = "current";
        settingsPopoutWindow = false;
        vimMode = true;
      };
      appearance = {
        enabledCssSnippets = [
          "noctalia"
        ];
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
        settings = {
          exportFileName = "obsidian.nix";
          generateNixosFiles = true;
          includeAppConfig = true;
          includeAppearance = true;
          includeCorePlugins = true;
          includeGraph = true;
          includeHotkeys = true;
          includePluginSettings = true;
          includePlugins = true;
          includeWorkspace = true;
          nixosActivateFileName = "obsidian-activate.sh";
          openAfterExport = true;
          stripWorkspaceFields = true;
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
          version = "1.0.21";
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
          additionalSuffixOfDatabaseName = "f7c607754655fb00";
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
          chunkSplitterVersion = "";
          concurrencyOfReadChunksOnline = 40;
          configPassphraseStore = "";
          couchDB_CustomHeaders = "";
          couchDB_DBNAME = "";
          couchDB_PASSWORD = "";
          couchDB_URI = "";
          couchDB_USER = "";
          customChunkSize = 0;
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
          doctorProcessedVersion = "1.0.0";
          enableChunkSplitterV2 = false;
          enableCompression = false;
          enableDebugTools = false;
          encrypt = true;
          encryptedCouchDBConnection = "%\$NpG3Dyo1p2waTtclIXxrKpoB754pAxyJYEg4rD6f8PS1buz1P9fFFUOkr75/7dym3aIYYapYenpIV/eujSwZPghv356cb2NHmNzEiSGMiEsoiJRgr8I0vmNOH268CBbxbCTEaIm01kVLQo3NJSqljjTg3PBNJHcmKJlWyWPDPtBwyXyvgJkfvM2DiO9L3598ISo9TPZlAYawPK4Diweu1rjqDHaZGZPMnkmn6wIz7sEyzKAIaU/7asaD+J2GFhDPS39pnKyESbtc4B2irXy0OFHWbi39HlOTRyY5KOG9LWH3/coaaU531LgCPctDti173MUu4NGDepdikex0y3iL/CIUlW/a+BmxNn3BGAtY2g6YlabSjPbMX5A3TyU214gioU7n5HGJiRAQG3YkuFrqQW0tv6ZaHtPuCcP0NtO9vYrpb+cyAPi0z3ytMxYxoWdkj26Za2ApdZDs7Yv2EwZTa7pYFlEx+Fu2vdrCR+/kqOdFBPyg5kfKSgBntA8q7Qt383ABmrb5IZQ3kP2fGoQsys7R5pJtUm8lQCVSZngtY937Y98G01CvMtGe35OJqdtvon66rvN8O3bwFhqqzdBWiShVOPKfJ5doXwvNr0XSGAVdUUl2Z1/oiO92/qzB7XDCaGhPk31uAKI6bT2RKbVp8oEPPt2KSJ+6cIxuWCaJZFoNlx3vgCsLWO4w33wEnJgZ9wIFpyC0WdJVoOKKTaZuL8pRTm1ynziAkFFpdUmZzjBZ46KyZNePoXVbog==";
          encryptedPassphrase = "%\$NpG3Dyo1p2waTtclIXxrKpoB754pAxyJYEg4rD6f8PQ6Mq5ZUjdaiRmmTcRCKmL52/7VMI4BbfAo4JD5U8TPqeTJ3gKNZjdprRTHFKIIAUIGWzH1A41QKaVTtUOfSK5byyj5RMOJhrdOHL+A9UyaVlX6uS8Kry7cL4I73q8Q2Tdtr8PBGXHDuNGSxdANig==";
          endpoint = "";
          forcePathStyle = true;
          gcDelay = 0;
          handleFilenameCaseSensitive = false;
          hashAlg = "xxhash64";
          hashCacheMaxAmount = 50;
          hashCacheMaxCount = 300;
          hideFileWarningNotice = false;
          ignoreFiles = ".gitignore";
          ignoreVersionCheck = false;
          isConfigured = true;
          jwtAlgorithm = "";
          jwtExpDuration = 5;
          jwtKey = "";
          jwtKid = "";
          jwtSub = "";
          keepReplicationActiveInBackground = false;
          lastReadUpdates = 24;
          lessInformationInLog = false;
          liveSync = true;
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
              uri = "%\$NpG3Dyo1p2waTtclIXxrKpoB754pAxyJYEg4rD6f8PSk2F+4n8P8oEAuumHS1Pnu5s7RZq2BEm+O/e4tui4jerjLoRyF6e7GS4A4QIerr1HWlYNvrhR3XJRxlaWDNMw79YAmorA0FfmS5sYmFIIKELHvooBeHL2PSgOLa9h+rvArWct7BVeLCQKwbNXzMbRT7BizoCqYsSHNUbeuorERhyCusT0MwsLgtEy7gfX6dWzXzRI8eNUcOOD/xMib8WUFSoeAGts5rkx9t8ooXUc=";
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
          tweakModified = 1788186960582;
          useAdvancedMode = true;
          useCustomRequestHandler = false;
          useDynamicIterationCount = false;
          useEden = false;
          useEdgeCaseMode = false;
          useHistory = true;
          useIgnoreFiles = false;
          useIndexedDBAdapter = true;
          useJWT = false;
          useOnlyLocalChunk = false;
          usePathObfuscation = false;
          usePluginEtc = false;
          usePluginSettings = false;
          usePluginSync = false;
          usePluginSyncV2 = false;
          usePowerUserMode = true;
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
      quickadd = {
        manifest = {
          author = "Christian B. B. Houmann";
          authorUrl = "https://bagerbach.com";
          description = "Quickly add new pages or content to your vault.";
          fundingUrl = "https://www.buymeacoffee.com/chhoumann";
          helpUrl = "https://quickadd.obsidian.guide/docs/";
          id = "quickadd";
          isDesktopOnly = false;
          minAppVersion = "1.13.0";
          name = "QuickAdd";
          version = "2.24.1";
        };
        settings = {
          ai = {
            confirmToolCalls = "destructive";
            defaultModel = "Ask me";
            defaultSystemPrompt = "As an AI assistant within Obsidian, your primary goal is to help users manage their ideas and knowledge more effectively. Format your responses using Markdown syntax. Please use the [[Obsidian]] link format. You can write aliases for the links by writing [[Obsidian|the alias after the pipe symbol]]. To use mathematical notation, use LaTeX syntax. LaTeX syntax for larger equations should be on separate lines, surrounded with double dollar signs (\$\$). You can also inline math expressions by wrapping it in \$ symbols. For example, use \$\$w_{ij}^{\\text{new}}:=w_{ij}^{\\text{current}}+\\eta\\cdot\\delta_j\\cdot x_{ij}\$\$ on a separate line, but you can write \"(\$\\eta\$ = learning rate, \$\\delta_j\$ = error term, \$x_{ij}\$ = input)\" inline.";
            promptTemplatesFolderPath = "";
            providers = [
              {
                apiKey = "";
                autoSyncModels = true;
                endpoint = "https://api.openai.com/v1";
                id = "openai";
                kind = "openai";
                modelSource = "modelsDev";
                models = [
                  {
                    maxOutputTokens = 128000;
                    maxTokens = 1050000;
                    name = "gpt-5.5";
                    supportsTemperature = false;
                  }
                  {
                    maxOutputTokens = 128000;
                    maxTokens = 1050000;
                    name = "gpt-5.4";
                    supportsTemperature = false;
                  }
                  {
                    maxOutputTokens = 128000;
                    maxTokens = 400000;
                    name = "gpt-5.4-mini";
                    supportsTemperature = false;
                  }
                  {
                    maxOutputTokens = 128000;
                    maxTokens = 400000;
                    name = "gpt-5.4-nano";
                    supportsTemperature = false;
                  }
                  {
                    maxOutputTokens = 32768;
                    maxTokens = 1047576;
                    name = "gpt-4.1";
                    supportsTemperature = true;
                  }
                  {
                    maxOutputTokens = 32768;
                    maxTokens = 1047576;
                    name = "gpt-4.1-mini";
                    supportsTemperature = true;
                  }
                  {
                    maxOutputTokens = 16384;
                    maxTokens = 128000;
                    name = "gpt-4o";
                    supportsTemperature = true;
                  }
                  {
                    maxOutputTokens = 16384;
                    maxTokens = 128000;
                    name = "gpt-4o-mini";
                    supportsTemperature = true;
                  }
                  {
                    maxOutputTokens = 100000;
                    maxTokens = 200000;
                    name = "o3";
                    supportsTemperature = false;
                  }
                  {
                    maxOutputTokens = 100000;
                    maxTokens = 200000;
                    name = "o4-mini";
                    supportsTemperature = false;
                  }
                ];
                name = "OpenAI";
              }
              {
                apiKey = "";
                autoSyncModels = true;
                endpoint = "https://generativelanguage.googleapis.com";
                id = "gemini";
                kind = "gemini";
                modelSource = "modelsDev";
                models = [
                  {
                    maxOutputTokens = 65536;
                    maxTokens = 1048576;
                    name = "gemini-3.5-flash";
                    supportsTemperature = true;
                  }
                  {
                    maxOutputTokens = 65536;
                    maxTokens = 1048576;
                    name = "gemini-3.1-pro-preview";
                    supportsTemperature = true;
                  }
                  {
                    maxOutputTokens = 65536;
                    maxTokens = 1048576;
                    name = "gemini-3.1-flash-lite";
                    supportsTemperature = true;
                  }
                  {
                    maxOutputTokens = 65536;
                    maxTokens = 1048576;
                    name = "gemini-3-pro-preview";
                    supportsTemperature = true;
                  }
                  {
                    maxOutputTokens = 65536;
                    maxTokens = 1048576;
                    name = "gemini-3-flash-preview";
                    supportsTemperature = true;
                  }
                  {
                    maxOutputTokens = 65536;
                    maxTokens = 1048576;
                    name = "gemini-2.5-pro";
                    supportsTemperature = true;
                  }
                  {
                    maxOutputTokens = 65536;
                    maxTokens = 1048576;
                    name = "gemini-2.5-flash";
                    supportsTemperature = true;
                  }
                  {
                    maxOutputTokens = 65536;
                    maxTokens = 1048576;
                    name = "gemini-2.5-flash-lite";
                    supportsTemperature = true;
                  }
                ];
                name = "Gemini";
              }
            ];
            showAssistant = true;
          };
          announceUpdates = "major";
          choices = [
            {
              appendLink = false;
              command = true;
              copyLinkToClipboard = false;
              discoverExistingNotesBeforeCreate = false;
              fileExistsBehavior = {
                kind = "prompt";
              };
              fileNameFormat = {
                enabled = false;
                format = "";
              };
              fileOpening = {
                direction = "vertical";
                focus = true;
                location = "tab";
                mode = "default";
              };
              folder = {
                chooseFromSubfolders = false;
                chooseWhenCreatingNote = false;
                createInSameFolderAsActiveFile = false;
                enabled = true;
                folders = [
                  "TUe/Notes"
                ];
              };
              id = "2bbc095d-5565-4122-bb9d-c9c0ebcb3b27";
              name = "New Note";
              openFile = true;
              templatePath = "99_Assets/Templates/Untitled.md";
              type = "Template";
            }
          ];
          dateAliases = {
            lm = "last month";
            lw = "last week";
            ly = "last year";
            nm = "next month";
            nw = "next week";
            ny = "next year";
            t = "today";
            tm = "tomorrow";
            yd = "yesterday";
          };
          devMode = false;
          disableOnlineFeatures = true;
          enableRibbonIcon = false;
          enableTemplatePropertyTypes = false;
          enableUriCallbacks = false;
          globalVariables = { };
          inputPrompt = "single-line";
          migrations = {
            addDefaultAIProviders = true;
            backfillFileOpeningDefaults = true;
            consolidateFileExistsBehavior = true;
            incrementFileNameSettingMoveToDefaultBehavior = true;
            migrateFileOpeningSettings = true;
            migrateProviderApiKeysToSecretStorage = true;
            migrateToMacroIDFromEmbeddedMacro = true;
            migrateToMultipleTemplateFolders = true;
            mutualExclusionInsertAfterAndWriteToBottomOfFile = true;
            pinAiModelRefs = true;
            refreshStaleDefaultModelSeeds = true;
            removeMacroIndirection = true;
            repairTemplateFileExistsBehavior = true;
            setProviderModelDiscoveryMode = true;
            setVersionAfterUpdateModalRelease = true;
            useQuickAddTemplateFolder = true;
          };
          namePastedImagesAfterNoteTitle = false;
          onePageInputEnabled = false;
          persistInputPromptDrafts = true;
          searchNestedChoices = true;
          showCaptureNotification = true;
          showInputCancellationNotification = false;
          templateFolderLauncherRow = "bottom";
          templateFolderPaths = [
            "99_Assets/Templates"
          ];
          useSelectionAsCaptureValue = true;
          version = "2.24.1";
        };
      };
      table-editor-obsidian = {
        manifest = {
          author = "Tony Grosinger";
          authorUrl = "https://grosinger.net";
          description = "Improved table navigation, formatting, manipulation, and formulas.";
          fundingUrl = {
            "Buy me a Coffee" = "https://buymeacoffee.com/tgrosinger";
            "Github Sponsor" = "https://github.com/sponsors/tgrosinger";
            Paypal = "https://paypal.me/tgrosinger";
          };
          id = "table-editor-obsidian";
          isDesktopOnly = false;
          minAppVersion = "1.0.0";
          name = "Advanced Tables";
          version = "0.23.2";
        };
        settings = {
          bindEnter = true;
          bindTab = true;
          formatType = "normal";
          showRibbonIcon = true;
        };
      };
    };
}