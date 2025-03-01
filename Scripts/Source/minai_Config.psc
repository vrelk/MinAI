Scriptname minai_Config extends SKI_ConfigBase Conditional

minai_MainQuestController main
minai_AIFF aiff
minai_Sex  sex
minai_DeviousStuff devious
bool Property ActionRegistryIsDirty = false Auto
minai_SapienceController sapience

; OID definitions
int logLevelOID
int useCBPCOID
int cbpcDisableSelfAssTouchOID
int cbpcDisableSelfTouchOID
int cbpcSelfTouchThresholdOID
int cbpcOtherTouchThresholdOID
int collisionCooldownOID
int collisionSpeechCooldownOID
int collisionSexCooldownOID
int allowDeviceLockOID
int allowDeviceUnlockOID
int requestResponseCooldownOID
int arousalForSexOID
int arousalForHarassOID
int confirmSexOID
int disableAIAnimationsOID
int useSapienceOID
int radiantDialogueFrequencyOID
int radiantDialogueChanceOID
int autoUpdateDiaryOID
int updateNarratorDiaryOID
int enableAISexOID
int genderWeightCommentsOID
int commentsRateOID
int forceOrgasmCommentOID
int forcePostSceneCommentOID
int prioritizePlayerThreadOID
int enableAmbientCommentsOID
int minRadianceRechatsOID
int maxRadianceRechatsOID
int maxThreadsOID
int allowSexTransitionsOID
int allowActorsToJoinSexOID
int aOIDMap ; Jmap for storing action oid's
int aCategoryMap ; Jmap for storing action categories

int actionEnabledOID
int actionIntervalOID
int actionExponentOID
int actionMaxIntervalOID
int actionDecayWindowOID

int testActionsOID
int addSpellsOID
int removeSpellsOID
int toggleCombatDialogueOID
int toggleSapienceOID

int singKeyOID          ; New OID for sing keybind
int narratorKeyOID      ; New OID for narrator keybind
int narratorTextKeyOID  ; New OID for narrator text input keybind

; Add new OID definitions near other key OIDs
int roleplayKeyOID      ; New OID for roleplay voice keybind
int roleplayTextKeyOID  ; New OID for roleplay text input keybind

; Key properties
int Property toggleSapienceKey = -1 Auto
int Property singKey = -1 Auto          ; New property for sing key
int Property narratorKey = -1 Auto      ; New property for narrator key
int Property narratorTextKey = -1 Auto  ; New property for narrator text input key

; Add new key properties
int Property roleplayKey = -1 Auto          ; Property for roleplay voice key
int Property roleplayTextKey = -1 Auto      ; Property for roleplay text key

; Legacy globals
GlobalVariable useCBPC
GlobalVariable minai_UseOstim
GlobalVariable minai_SapienceEnabled

string currentAction
string currentCategory

; New configs
Bool cbpcDisableSelfAssTouchDefault = True
Bool Property cbpcDisableSelfAssTouch = True Auto

Bool cbpcDisableSelfTouchDefault = False 
Bool Property cbpcDisableSelfTouch = False Auto

float cbpcOtherTouchThresholdDefault = 4.0
float Property cbpcOtherTouchThreshold = 4.0 Auto

float cbpcSelfTouchThresholdDefault = 4.0 
float Property cbpcSelfTouchThreshold = 4.0 Auto

float collisionCooldownDefault = 2.0
float Property collisionCooldown = 2.0 Auto

float collisionSpeechCooldownDefault = 8.0
float Property collisionSpeechCooldown = 8.0 Auto

float collisionSexCooldownDefault = 14.0
float Property collisionSexCooldown = 14.0 Auto

bool allowDeviceLockDefault = False
bool Property allowDeviceLock = False Auto

bool allowDeviceUnlockDefault = False
bool Property allowDeviceUnlock = False Auto

float requestResponseCooldownDefault = 10.0
Float Property requestResponseCooldown = 10.0 Auto

float arousalForSexDefault = 0.0
Float Property arousalForSex = 0.0 Auto

float arousalForHarassDefault = 0.0
Float Property arousalForHarass = 0.0 Auto

bool confirmSexDefault = False
bool Property confirmSex = False Auto

Bool disableAIAnimationsDefault = False
Bool Property disableAIAnimations = False Auto

Float radiantDialogueFrequencyDefault = 30.0
Float Property radiantDialogueFrequency = 30.0 Auto

Float radiantDialogueChanceDefault = 50.0
Float Property radiantDialogueChance = 50.0 Auto

bool Property bulkEnabled = True Auto

bool autoUpdateDiaryDefault = False
bool Property autoUpdateDiary = False Auto

bool updateNarratorDiaryDefault = False
bool Property updateNarratorDiary = False Auto

bool enableAISexDefault = true
bool Property enableAISex = False Auto

float genderWeightCommentsDefault = 50.0
float Property genderWeightComments = 50.0 Auto

float commentsRateDefault = 15.0
float Property commentsRate = 15.0 Auto

bool forceOrgasmCommentDefault = true
bool Property forceOrgasmComment = true Auto

bool forcePostSceneCommentDefault = true
bool Property forcePostSceneComment = true Auto

bool prioritizePlayerThreadDefault = true
bool Property prioritizePlayerThread = true Auto

bool enableAmbientCommentsDefault = true
bool Property enableAmbientComments = true Auto

int minRadianceRechatsDefault = 3
int Property minRadianceRechats = 3 Auto

int maxRadianceRechatsDefault = 5
int Property maxRadianceRechats = 5 Auto

float maxThreadsDefault = 5.0
float Property maxThreads = 5.0 Auto

bool allowSexTransitionsDefault = False
bool Property allowSexTransitions = False Auto

bool allowActorsToJoinSexDefault = False
bool Property allowActorsToJoinSex = False Auto

bool toggleCombatDialogueDefault = True
bool property toggleCombatDialogue = True Auto

bool updateNarratorProfileDefault = False
bool Property updateNarratorProfile = False Auto

int updateNarratorProfileOID

bool preserveQueueDefault = True
bool Property preserveQueue = True Auto

int preserveQueueOID

bool trackVictimAwarenessDefault = True
bool Property trackVictimAwareness = True Auto

int trackVictimAwarenessOID

bool enableConsoleLoggingDefault = True
bool Property enableConsoleLogging = True Auto

int enableConsoleLoggingOID

bool disableSapienceInStealthDefault = False
bool Property disableSapienceInStealth = False Auto

int disableSapienceInStealthOID

int enableRadiantDialogueOID

bool enableRadiantDialogueDefault = True
bool Property enableRadiantDialogue = True Auto

bool Property enableAIAgentSetConf = True Auto
bool Property enableAIAgentLogMessage = True Auto
bool Property enableAIAgentSetAnimationBusy = True Auto
bool Property enableAIAgentFindAllNearbyAgents = True Auto
bool Property enableAIAgentGetAgentByName = True Auto
bool Property enableAIAgentRemoveAgentByName = True Auto
bool Property enableAIAgentSetDrivenByAIA = True Auto
bool Property enableAIAgentRequestMessageForActor = True Auto

int enableAIAgentSetConfOID
int enableAIAgentLogMessageOID  
int enableAIAgentSetAnimationBusyOID
int enableAIAgentFindAllNearbyAgentsOID
int enableAIAgentGetAgentByNameOID
int enableAIAgentRemoveAgentByNameOID
int enableAIAgentSetDrivenByAIAOID
int enableAIAgentRequestMessageForActorOID

; Add these properties near the other config properties
bool Property enableAIAgentRequestMessage = True Auto
bool Property enableAIAgentRecordSoundEx = True Auto
bool Property enableAIAgentStopRecording = True Auto

; Add these OIDs near the other OID definitions
int enableAIAgentRequestMessageOID
int enableAIAgentRecordSoundExOID  
int enableAIAgentStopRecordingOID

; Add near other AIAgent properties
bool Property enableAIAgentLogMessageForActor = True Auto

; Add near other AIAgent OIDs
int enableAIAgentLogMessageForActorOID

; Add near other config properties
int logLevelDefault = 3 ; INFO level by default
int Property logLevel = 3 Auto

Event OnConfigInit()
  main.Info("Building mcm menu.")
  InitializeMCM()
EndEvent

Function InitializeMCM()
  minai_UseOStim = Game.GetFormFromFile(0x0906, "MinAI.esp") as GlobalVariable
  aiff = Game.GetFormFromFile(0x0802, "MinAI.esp") as minai_AIFF
  sex = Game.GetFormFromFile(0x0802, "MinAI.esp") as minai_Sex
  main = Game.GetFormFromFile(0x0802, "MinAI.esp") as minai_MainQuestController
  devious = Game.GetFormFromFile(0x0802, "MinAI.esp") as minai_DeviousStuff
  sapience = Game.GetFormFromFile(0x091D, "MinAI.esp") as minai_SapienceController
  minai_SapienceEnabled = Game.GetFormFromFile(0x091A, "MinAI.esp") as GlobalVariable
  Main.Info("Initializing MCM ( " + JMap.Count(aiff.actionRegistry) + " actions in registry).")
  useCBPC = Game.GetFormFromFile(0x0910, "MinAI.esp") as GlobalVariable
  ActionRegistryIsDirty = False
  SetupPages()
EndFunction

int Function GetVersion()
  return 15 ; mcm menu version
EndFunction

Function SetupPages()
  if sex.IsNSFW()
    Pages = new string[5]
    Pages[0] = "$MINAI_GENERAL"
    Pages[1] = "$MINAI_PHYSICS_CBPC"
    Pages[2] = "$MINAI_DEVIOUS_STUFF"
    Pages[3] = "$MINAI_SEX_SETTINGS"
    Pages[4] = "$MINAI_ACTION_REGISTRY"
  Else
    Pages = new string[3]
    Pages[0] = "$MINAI_GENERAL"
    Pages[1] = "$MINAI_PHYSICS_CBPC"
    Pages[2] = "$MINAI_ACTION_REGISTRY"
  EndIf
EndFunction

Event OnVersionUpdate(int newVersion)
  InitializeMCM()
EndEvent

Event OnPageReset(string page)
  Main.Info("OnPageReset(" + page + ")")
  if aOIDMap == 0 || JMap.Count(aOIDMap) == 0
    InitializeMCM()
  EndIf
  if page == "" || page == "$MINAI_GENERAL"
    RenderGeneralPage()
  elseIf page == "$MINAI_PHYSICS_CBPC"
    RenderPhysicsPage()
  elseif page == "$MINAI_DEVIOUS_STUFF"
    RenderDeviousPage()
  elseif page == "$MINAI_SEX_SETTINGS"
    RenderSexPage()
  elseif page == "$MINAI_ACTION_REGISTRY"
    RenderActionsPage();
  else
    RenderPlaceholderPage()
  EndIf
EndEvent

Function RenderGeneralPage()
  SetCursorFillMode(TOP_TO_BOTTOM)		
  AddHeaderOption("$MINAI_LLM_SETTINGS")
  autoUpdateDiaryOID = AddToggleOption("$MINAI_AUTO_UPDATE_FOLLOWER_DIARIES", autoUpdateDiary)
  updateNarratorDiaryOID = AddToggleOption("$MINAI_UPDATE_NARRATOR_DIARY", updateNarratorDiary)
  updateNarratorProfileOID = AddToggleOption("$MINAI_UPDATE_NARRATOR_PROFILE", updateNarratorProfile)
  requestResponseCooldownOID = AddSliderOption("$MINAI_LLM_RESPONSE_COOLDOWN", requestResponseCooldown, "{1}")
  AddHeaderOption("$MINAI_SAPIENCE_SETTINGS")
  useSapienceOID = AddToggleOption("$MINAI_ENABLE_SAPIENCE", minai_SapienceEnabled.GetValueInt() == 1)
  enableRadiantDialogueOID = AddToggleOption("$MINAI_ENABLE_RADIANT_DIALOGUE", enableRadiantDialogue)
  disableSapienceInStealthOID = AddToggleOption("$MINAI_DISABLE_SAPIENCE_SNEAKING", disableSapienceInStealth)
  radiantDialogueFrequencyOID = AddSliderOption("$MINAI_RADIANT_DIALOGUE_FREQUENCY", radiantDialogueFrequency, "{1}")
  radiantDialogueChanceOID = AddSliderOption("$MINAI_RADIANT_DIALOGUE_CHANCE", radiantDialogueChance, "{1}")
  minRadianceRechatsOID = AddSliderOption("$MINAI_MIN_RADIANCE_RECHATS", minRadianceRechats, "{0}")
  maxRadianceRechatsOID = AddSliderOption("$MINAI_MAX_RADIANCE_RECHATS", maxRadianceRechats, "{0}")
  SetCursorPosition(1) ; Move cursor to top right position
  AddHeaderOption("$MINAI_GENERAL_SETTINGS")
  toggleCombatDialogueOID = AddToggleOption("$MINAI_ALLOW_COMBAT_DIALOGUE", toggleCombatDialogue)
  preserveQueueOID = AddToggleOption("$MINAI_PRESERVE_DIALOGUE_QUEUE", preserveQueue)
  addSpellsOID = AddTextOption("$MINAI_GENERAL_CATEGORY", "$MINAI_ADD_SPELLS")
  removeSpellsOID = AddTextOption("$MINAI_GENERAL_CATEGORY", "$MINAI_REMOVE_SPELLS")
  toggleSapienceOID = AddKeyMapOption("$MINAI_TOGGLE_SAPIENCE", toggleSapienceKey)
  roleplayKeyOID = AddKeyMapOption("$MINAI_ROLEPLAY_VOICE", roleplayKey)
  roleplayTextKeyOID = AddKeyMapOption("$MINAI_ROLEPLAY_TEXT", roleplayTextKey)
  ; Disable for now until I finish implementing this
  ; singKeyOID = AddKeyMapOption("$MINAI_SING", singKey)              ; New keybind option
  narratorKeyOID = AddKeyMapOption("$MINAI_TALK_TO_NARRATOR", narratorKey)  ; New keybind option
  narratorTextKeyOID = AddKeyMapOption("$MINAI_TYPE_TO_NARRATOR", narratorTextKey)
  disableAIAnimationsOID = AddToggleOption("$MINAI_DISABLE_AI_ANIMATIONS", disableAIAnimations)
  AddHeaderOption("$MINAI_DEBUG")
  logLevelOID = AddSliderOption("Log Level", logLevel, "{0}")
  enableConsoleLoggingOID = AddToggleOption("$MINAI_ENABLE_CONSOLE_LOGGING", enableConsoleLogging)
  testActionsOID = AddTextOption("$MINAI_DEBUG_CATEGORY", "$MINAI_TEST_MOD_EVENTS")
  enableAIAgentSetConfOID = AddToggleOption("Enable setConf calls", enableAIAgentSetConf)
  enableAIAgentLogMessageOID = AddToggleOption("Enable logMessage calls", enableAIAgentLogMessage)
  enableAIAgentSetAnimationBusyOID = AddToggleOption("Enable setAnimationBusy calls", enableAIAgentSetAnimationBusy)
  enableAIAgentFindAllNearbyAgentsOID = AddToggleOption("Enable findAllNearbyAgents calls", enableAIAgentFindAllNearbyAgents)
  enableAIAgentGetAgentByNameOID = AddToggleOption("Enable getAgentByName calls", enableAIAgentGetAgentByName)
  enableAIAgentRemoveAgentByNameOID = AddToggleOption("Enable removeAgentByName calls", enableAIAgentRemoveAgentByName)
  enableAIAgentSetDrivenByAIAOID = AddToggleOption("Enable setDrivenByAIA calls", enableAIAgentSetDrivenByAIA)
  enableAIAgentRequestMessageForActorOID = AddToggleOption("Enable requestMessageForActor calls", enableAIAgentRequestMessageForActor)
  enableAIAgentRequestMessageOID = AddToggleOption("Enable requestMessage calls", enableAIAgentRequestMessage)
  enableAIAgentRecordSoundExOID = AddToggleOption("Enable recordSoundEx calls", enableAIAgentRecordSoundEx)
  enableAIAgentStopRecordingOID = AddToggleOption("Enable stopRecording calls", enableAIAgentStopRecording)
  enableAIAgentLogMessageForActorOID = AddToggleOption("Enable logMessageForActor calls", enableAIAgentLogMessageForActor)
EndFunction

Function RenderPhysicsPage()
  SetCursorFillMode(TOP_TO_BOTTOM)		
  AddHeaderOption("$MINAI_CBPC_SETTINGS")
  UseCBPCOID = AddToggleOption("$MINAI_ENABLE_CBPC", useCBPC.GetValueInt() == 1)
  cbpcDisableSelfTouchOID = AddToggleOption("$MINAI_DISABLE_SELF_TOUCH", cbpcDisableSelfTouch)
  cbpcDisableSelfAssTouchOID = AddToggleOption("$MINAI_DISABLE_SELF_ASS_TOUCH", cbpcDisableSelfAssTouch)
  collisionSpeechCooldownOID = AddSliderOption("$MINAI_PHYSICS_SPEECH_RATE", collisionSpeechCooldown, "{1}")
  collisionSexCooldownOID = AddSliderOption("$MINAI_PHYSICS_SPEECH_RATE_SEX", collisionSexCooldown, "{1}")
  cbpcSelfTouchThresholdOID = AddSliderOption("$MINAI_SELF_TOUCH_THRESHOLD", cbpcSelfTouchThreshold, "{1}")
  cbpcOtherTouchThresholdOID = AddSliderOption("$MINAI_NPC_TOUCH_THRESHOLD", cbpcOtherTouchThreshold, "{1}")
  collisionCooldownOID = AddSliderOption("$MINAI_PHYSICS_CALCULATION_RATE", collisionCooldown, "{1}")
EndFunction

Function RenderSexPage()
  ; left column
  SetCursorFillMode(TOP_TO_BOTTOM)
  AddHeaderOption("$MINAI_AROUSAL_SETTINGS")
  arousalForSexOID = AddSliderOption("$MINAI_AROUSAL_SEX_THRESHOLD", arousalForSex, "{0}")
  arousalForHarassOID = AddSliderOption("$MINAI_AROUSAL_HARASS_THRESHOLD", arousalForHarass, "{0}")
  confirmSexOID = AddToggleOption("$MINAI_CONFIRM_SEX", confirmSex)
  allowSexTransitionsOID = AddToggleOption("$MINAI_ALLOW_SEX_TRANSITIONS", allowSexTransitions)
  allowActorsToJoinSexOID = AddToggleOption("$MINAI_ALLOW_JOIN_SEX", allowActorsToJoinSex)
  trackVictimAwarenessOID = AddToggleOption("$MINAI_TRACK_VICTIM_AWARENESS", trackVictimAwareness)
  AddHeaderOption("$MINAI_NPC_SEX_SETTINGS")
  enableAISexOID = AddToggleOption("$MINAI_ENABLE_NPC_SEX", enableAISex)
  ; right column
  SetCursorPosition(1)
  AddHeaderOption("$MINAI_SEX_COMMENTS")
  genderWeightCommentsOID = AddSliderOption("$MINAI_GENDER_WEIGHT", genderWeightComments, "{0}")
  commentsRateOID = AddSliderOption("$MINAI_COMMENTS_RATE", commentsRate)
  prioritizePlayerThreadOID = AddToggleOption("$MINAI_PRIORITIZE_PLAYER_COMMENTS", prioritizePlayerThread)
  forceOrgasmCommentOID = AddToggleOption("$MINAI_FORCE_ORGASM_COMMENT", forceOrgasmComment)
  forcePostSceneCommentOID = AddToggleOption("$MINAI_FORCE_POST_SCENE_COMMENT", forcePostSceneComment)
  enableAmbientCommentsOID = AddToggleOption("$MINAI_ENABLE_AMBIENT_COMMENTS", enableAmbientComments)
  maxThreadsOID = AddSliderOption("$MINAI_MAX_THREADS", maxThreads)
EndFunction

Function RenderDeviousPage()
  SetCursorFillMode(TOP_TO_BOTTOM)		
  AddHeaderOption("$MINAI_DD_SETTINGS")
  if (!devious.HasDD())
    AddHeaderOption("$MINAI_DD_NOT_DETECTED")
    return
  EndIf
  AllowDeviceLockOID = AddToggleOption("$MINAI_ALLOW_DEVICE_LOCK", allowDeviceLock)
  AllowDeviceUnlockOID = AddToggleOption("$MINAI_ALLOW_DEVICE_UNLOCK", allowDeviceUnlock)
EndFunction

Function RenderAction(int actionObj)
  SetCursorPosition(1)
  string name = JMap.getStr(actionObj, "name")
  string mcmName = JMap.getStr(actionObj, "mcmName")
  string mcmDesc = JMap.getStr(actionObj, "mcmDesc")
  AddHeaderOption(mcmName + ": " + mcmDesc)
  int enabled = JMap.getInt(actionObj, "enabled")
  float interval = JMap.getFlt(actionObj, "interval")
  float exponent = JMap.getFlt(actionObj, "exponent")
  float maxInterval = JMap.getFlt(actionObj, "maxInterval")
  float decayWindow = JMap.getFlt(actionObj, "decayWindow")
  Main.Debug("Rendering action " + name + " with mcmName " + mcmName)
  actionEnabledOID  = AddToggleOption("$MINAI_ACTION_ENABLE_DISABLE", enabled == 1)
  actionIntervalOID = AddSliderOption("$MINAI_ACTION_INTERVAL", interval, "{1}")
  actionExponentOID = AddSliderOption("$MINAI_ACTION_EXPONENT", exponent, "{1}")
  actionMaxIntervalOID = AddSliderOption("$MINAI_ACTION_MAX_INTERVAL", maxInterval, "{0}")
  actionDecayWindowOID = AddSliderOption("$MINAI_ACTION_DECAY_WINDOW", decayWindow, "{0}")
EndFunction

Function RenderActionCategory(string category)
  ; Get the appropriate header text
  string headerText = ""
  if category == "General"
    headerText = "$MINAI_HEADER_GENERAL"
  elseif category == "Survival"
    headerText = "$MINAI_HEADER_SURVIVAL"
  elseif category == "External"
    headerText = "$MINAI_HEADER_EXTERNAL"
  elseif category == "Followers"
    headerText = "$MINAI_HEADER_FOLLOWERS"
  elseif category == "Arousal"
    headerText = "$MINAI_HEADER_AROUSAL"
  elseif category == "Sex"
    headerText = "$MINAI_HEADER_SEX"
  elseif category == "Devious Stuff"
    headerText = "$MINAI_HEADER_DEVIOUS"
  elseif category == "Devious Followers"
    headerText = "$MINAI_HEADER_DEVIOUS_FOLLOWERS"
  elseif category == "Submissive Lola"
    headerText = "$MINAI_HEADER_SUBMISSIVE_LOLA"
  endif

  ; Get the appropriate expand text
  string expandText = ""
  if category == "General"
    expandText = "$MINAI_EXPAND_GENERAL"
  elseif category == "Survival"
    expandText = "$MINAI_EXPAND_SURVIVAL"
  elseif category == "External"
    expandText = "$MINAI_EXPAND_EXTERNAL"
  elseif category == "Followers"
    expandText = "$MINAI_EXPAND_FOLLOWERS"
  elseif category == "Arousal"
    expandText = "$MINAI_EXPAND_AROUSAL"
  elseif category == "Sex"
    expandText = "$MINAI_EXPAND_SEX"
  elseif category == "Devious Stuff"
    expandText = "$MINAI_EXPAND_DEVIOUS"
  elseif category == "Devious Followers"
    expandText = "$MINAI_EXPAND_DEVIOUS_FOLLOWERS"
  elseif category == "Submissive Lola"
    expandText = "$MINAI_EXPAND_SUBMISSIVE_LOLA"
  endif

  ; Use the texts
  AddHeaderOption(headerText)
  if category != currentCategory
    int categoryOID = AddTextOption(expandText, "")
    JMap.setInt(aCategoryMap, category, categoryOID)
    return
  EndIf
  Main.Debug("Rendering category " + category)
  int i = 0
  string[] actions = JMap.allKeysPArray(aiff.actionRegistry)
  while i < actions.Length
    int actionObj = JMap.getObj(aiff.actionRegistry, actions[i])
    string mcmPage = JMap.getStr(actionObj, "mcmPage")
    if mcmPage == category
      string mcmName = JMap.getStr(actionObj, "mcmName")
      string name = JMap.getStr(actionObj, "name")
      int oid = AddTextOption(mcmName, "$MINAI_EDIT_ACTION")
      Main.Debug("Adding action " + name + " to aOIDMap with oid " + oid + " and name " + mcmName + " and page " + mcmPage)
      JMap.setInt(aOIDMap, name, oid)
    EndIf
    i += 1
  EndWhile
EndFunction

Function RenderActionsPage()
  if aOIDMap != 0
    aOIDMap = JValue.Release(aOIDMap)
  EndIf
  aOIDMap = JMap.Object()
  JValue.Retain(aOIDMap)
  if aCategoryMap != 0
    aCategoryMap = JValue.Release(aCategoryMap)
  EndIf
  aCategoryMap = JMap.Object()
  JValue.Retain(aCategoryMap)

  SetCursorFillMode(TOP_TO_BOTTOM)
  SetCursorPosition(0)
  string[] actionCategories
  if sex.IsNSFW()
    actionCategories = new String[9];
    actionCategories[0] = "General";
    actionCategories[1] = "Survival";
    actionCategories[2] = "External";
    actionCategories[3] = "Followers";
    actionCategories[4] = "Arousal";
    actionCategories[5] = "Sex";
    actionCategories[6] = "Devious Stuff"; 
    actionCategories[7] = "Devious Followers";
    actionCategories[8] = "Submissive Lola";
  else
    actionCategories = new String[4];
    actionCategories[0] = "General";
    actionCategories[1] = "Survival";
    actionCategories[2] = "External";
    actionCategories[3] = "Followers";
  EndIf
  int i = 0
  while i < actionCategories.Length
    RenderActionCategory(actionCategories[i])
    i += 1
  EndWhile
  if currentAction != ""
    RenderAction(JMap.getObj(aiff.actionRegistry, currentAction))
  EndIf
EndFunction

Function RenderPlaceholderPage()
  AddHeaderOption("Not Yet Implemented") 
EndFunction

Function SetGlobalToggle(int oid, GlobalVariable var, bool value)
  if value
    var.SetValue(1)
  else
    var.SetValue(0)
  EndIf
  SetToggleOptionValue(oid, var.GetValueInt() == 1)
EndFunction

Function ToggleGlobal(int oid, GlobalVariable var)
  if var.GetValueInt() == 1
    var.SetValue(0)
  else
    var.SetValue(1)
  EndIf
  SetToggleOptionValue(oid, var.GetValueInt() == 1)
EndFunction

Function StoreConfig(string var, string value)
  actor Player = Game.GetPlayer()
  string playerName = Main.GetActorName(player)
  if aiff.HasAIFF()
    aiff.SetActorVariable(Player, var, value)
  EndIf
EndFunction

Function StoreAllConfigs()
  StoreConfig("allowDeviceLock", allowDeviceLock)
  StoreConfig("allowDeviceUnlock", allowDeviceUnlock)
  StoreConfig("arousalForSex", arousalForSex)
  StoreConfig("arousalForHarass", arousalForHarass)
EndFunction

Function SetActionEnabled(string actionName, bool value)
  int actionObj = JMap.getObj(aiff.actionRegistry, actionName)
  int tmp = 0
  if value
    tmp = 1
  EndIf
  JMap.setInt(actionObj, "enabled", tmp)
  JMap.SetObj(aiff.actionRegistry, actionName, actionObj)
  aiff.ResetAllActionBackoffs()
EndFunction

Function ToggleActionEnabled(string actionName)
  int actionObj = JMap.getObj(aiff.actionRegistry, actionName)
  int tmp = JMap.getInt(actionObj, "enabled")
  if tmp == 1
    tmp = 0
  else
    tmp = 1
  EndIf
  JMap.setInt(actionObj, "enabled", tmp)
  JMap.SetObj(aiff.actionRegistry, actionName, actionObj)
  aiff.ResetAllActionBackoffs()
EndFunction

Function SetActionInterval(string actionName, float value)
  Main.Debug("Setting action interval for " + actionName + " to " + value)
  int actionObj = JMap.getObj(aiff.actionRegistry, actionName)
  JMap.setFlt(actionObj, "interval", value)
  JMap.SetObj(aiff.actionRegistry, actionName, actionObj)
  aiff.ResetAllActionBackoffs()
EndFunction

Function SetActionExponent(string actionName, float value)
  Main.Debug("Setting action exponent for " + actionName + " to " + value)
  int actionObj = JMap.getObj(aiff.actionRegistry, actionName)
  JMap.setFlt(actionObj, "exponent", value)
  JMap.SetObj(aiff.actionRegistry, actionName, actionObj)
  aiff.ResetAllActionBackoffs()
EndFunction

Function SetActionMaxInterval(string actionName, float value)
  Main.Debug("Setting action max interval for " + actionName + " to " + value)
  int actionObj = JMap.getObj(aiff.actionRegistry, actionName)
  JMap.setFlt(actionObj, "maxInterval", value)
  JMap.SetObj(aiff.actionRegistry, actionName, actionObj)
  aiff.ResetAllActionBackoffs()
EndFunction

Function SetActionDecayWindow(string actionName, float value)
  Main.Debug("Setting action decay window for " + actionName + " to " + value)
  int actionObj = JMap.getObj(aiff.actionRegistry, actionName)
  JMap.setFlt(actionObj, "decayWindow", value)
  JMap.SetObj(aiff.actionRegistry, actionName, actionObj)
  aiff.ResetAllActionBackoffs()
EndFunction

Event OnOptionSelect(int oid)
  Main.Debug("OnOptionSelect(" + oid + ")")
  if oid == enableConsoleLoggingOID
    enableConsoleLogging = !enableConsoleLogging
    SetToggleOptionValue(oid, enableConsoleLogging)
  elseif oid == UseCBPCOID
    toggleGlobal(oid, useCBPC)
    Debug.Notification("CBPC setting changed. Save/Reload to take effect")
  elseif oid == autoUpdateDiaryOID
    autoUpdateDiary = !autoUpdateDiary
    SetToggleOptionValue(oid, autoUpdateDiary)
  elseif oid == updateNarratorDiaryOID
    updateNarratorDiary = !updateNarratorDiary
    SetToggleOptionValue(oid, updateNarratorDiary)
  elseif oid == updateNarratorProfileOID
    updateNarratorProfile = !updateNarratorProfile
    SetToggleOptionValue(oid, updateNarratorProfile)
  elseif oid == enableAISexOID
    enableAISex = !enableAISex
    aiff.SetAISexEnabled(enableAISex)
    SetToggleOptionValue(oid, enableAISex)
  elseif oid == useSapienceOID
    toggleGlobal(oid, minai_SapienceEnabled)
    if minai_SapienceEnabled.GetValueInt() == 1.0
      sapience.StartRadiantDialogue()
    else
      sapience.StopRadiantDialogue()
    EndIf
  elseif oid == cbpcDisableSelfTouchOID
    cbpcDisableSelfTouch = !cbpcDisableSelfTouch
    SetToggleOptionValue(oid, cbpcDisableSelfTouch)
  elseif oid == cbpcDisableSelfAssTouchOID
    cbpcDisableSelfAssTouch = !cbpcDisableSelfAssTouch
    SetToggleOptionValue(oid, cbpcDisableSelfAssTouch)
  elseif oid == allowDeviceLockOID
    allowDeviceLock = !allowDeviceLock
    SetToggleOptionValue(oid, allowDeviceLock)
    StoreConfig("allowDeviceLock", allowDeviceLock)
  elseif oid == allowDeviceUnlockOID
    allowDeviceUnlock = !allowDeviceUnlock
    SetToggleOptionValue(oid, allowDeviceUnlock)
    StoreConfig("allowDeviceUnlock", allowDeviceUnlock)
  elseif oid == confirmSexOID
    confirmSex = !confirmSex
    SetToggleOptionValue(oid, confirmSex)
  elseif oid == allowSexTransitionsOID
    allowSexTransitions = !allowSexTransitions
    SetToggleOptionValue(oid, allowSexTransitions)
    aiff.SetActorVariable(game.GetPlayer(), "allowSexTransitions", allowSexTransitions)
  elseif oid == allowActorsToJoinSexOID
    allowActorsToJoinSex = !allowActorsToJoinSex
    SetToggleOptionValue(oid, allowActorsToJoinSex)
  elseif oid == disableAIAnimationsOID
    disableAIAnimations = !disableAIAnimations
    SetToggleOptionValue(oid, disableAIAnimations)
  elseif oid == toggleCombatDialogueOID
    toggleCombatDialogue = !toggleCombatDialogue
    if toggleCombatDialogue
      sapience.EnableCombatDialogue()
    else
      sapience.DisableCombatDialogue()
    EndIf
    SetToggleOptionValue(oid, toggleCombatDialogue)
  elseif oid == forceOrgasmCommentOID
    forceOrgasmComment = !forceOrgasmComment
    SetToggleOptionValue(oid, forceOrgasmComment)
  elseif oid == forcePostSceneCommentOID
    forcePostSceneComment = !forcePostSceneComment
    SetToggleOptionValue(oid, forcePostSceneComment)
  elseif oid == prioritizePlayerThreadOID
    prioritizePlayerThread = !prioritizePlayerThread
    SetToggleOptionValue(oid, prioritizePlayerThread)
  elseif oid == actionEnabledOID
    ToggleActionEnabled(currentAction)
    SetToggleOptionValue(oid, JMap.getInt(JMap.getObj(aiff.actionRegistry, currentAction), "enabled") == 1)
  elseif oid == addSpellsOID
    main.AddSpellsToPlayer()
  elseif oid == removeSpellsOID
    main.RemoveSpellsFromPlayer()
  elseif oid == testActionsOID
    main.TestModEvents()
    Debug.MessageBox("Testing mod events...")
  elseif oid == enableAmbientCommentsOID
    enableAmbientComments = !enableAmbientComments
    SetToggleOptionValue(oid, enableAmbientComments)
  elseif oid == updateNarratorProfileOID
    updateNarratorProfile = !updateNarratorProfile
    SetToggleOptionValue(oid, updateNarratorProfile)
  elseif oid == preserveQueueOID
    preserveQueue = !preserveQueue
    if preserveQueue
      aiff.EnablePreserveQueue()
    else
      aiff.DisablePreserveQueue() 
    EndIf
    SetToggleOptionValue(oid, preserveQueue)
  elseif oid == trackVictimAwarenessOID
    trackVictimAwareness = !trackVictimAwareness
    SetToggleOptionValue(oid, trackVictimAwareness)
  elseif oid == disableSapienceInStealthOID
    disableSapienceInStealth = !disableSapienceInStealth
    SetToggleOptionValue(oid, disableSapienceInStealth)
  elseif oid == enableRadiantDialogueOID
    enableRadiantDialogue = !enableRadiantDialogue
    if enableRadiantDialogue
      sapience.StartRadiantDialogue()
    else
      sapience.StopRadiantDialogue()
    EndIf
    SetToggleOptionValue(oid, enableRadiantDialogue)
  elseif oid == enableAIAgentSetConfOID
    enableAIAgentSetConf = !enableAIAgentSetConf
    SetToggleOptionValue(oid, enableAIAgentSetConf)
  elseif oid == enableAIAgentLogMessageOID
    enableAIAgentLogMessage = !enableAIAgentLogMessage
    SetToggleOptionValue(oid, enableAIAgentLogMessage)
  elseif oid == enableAIAgentSetAnimationBusyOID
    enableAIAgentSetAnimationBusy = !enableAIAgentSetAnimationBusy
    SetToggleOptionValue(oid, enableAIAgentSetAnimationBusy)
  elseif oid == enableAIAgentFindAllNearbyAgentsOID
    enableAIAgentFindAllNearbyAgents = !enableAIAgentFindAllNearbyAgents
    SetToggleOptionValue(oid, enableAIAgentFindAllNearbyAgents)
  elseif oid == enableAIAgentGetAgentByNameOID
    enableAIAgentGetAgentByName = !enableAIAgentGetAgentByName
    SetToggleOptionValue(oid, enableAIAgentGetAgentByName)
  elseif oid == enableAIAgentRemoveAgentByNameOID
    enableAIAgentRemoveAgentByName = !enableAIAgentRemoveAgentByName
    SetToggleOptionValue(oid, enableAIAgentRemoveAgentByName)
  elseif oid == enableAIAgentSetDrivenByAIAOID
    enableAIAgentSetDrivenByAIA = !enableAIAgentSetDrivenByAIA
    SetToggleOptionValue(oid, enableAIAgentSetDrivenByAIA)
  elseif oid == enableAIAgentRequestMessageForActorOID
    enableAIAgentRequestMessage = !enableAIAgentRequestMessage
    SetToggleOptionValue(oid, enableAIAgentRequestMessage)
  elseif oid == enableAIAgentRecordSoundExOID
    enableAIAgentRecordSoundEx = !enableAIAgentRecordSoundEx
    SetToggleOptionValue(oid, enableAIAgentRecordSoundEx)
  elseif oid == enableAIAgentStopRecordingOID
    enableAIAgentStopRecording = !enableAIAgentStopRecording
    SetToggleOptionValue(oid, enableAIAgentStopRecording)
  elseif oid == enableAIAgentLogMessageForActorOID
    enableAIAgentLogMessageForActor = !enableAIAgentLogMessageForActor
    SetToggleOptionValue(oid, enableAIAgentLogMessageForActor)
  EndIf
  int i = 0
  string[] categories = JMap.allKeysPArray(aCategoryMap)
  while i < categories.Length
    int categoryOID = JMap.getInt(aCategoryMap, categories[i])
    if oid == categoryOID
      currentCategory = categories[i]
      ForcePageReset()
      return
    EndIf
    i += 1
  EndWhile
  i = 0
  string[] actions = JMap.allKeysPArray(aOIDMap)
  while i < actions.Length
    int aOID = JMap.getInt(aOIDMap, actions[i])
    if (oid == aoid)
      currentAction = actions[i]
      ForcePageReset()
      return
    EndIf
    i += 1
  EndWhile
EndEvent

Event OnOptionDefault(int oid)
  bool changedAction = False
  if oid == enableConsoleLoggingOID
    enableConsoleLogging = enableConsoleLoggingDefault
    SetToggleOptionValue(oid, enableConsoleLogging)
  elseif oid == UseCBPCOID
    SetGlobalToggle(oid, UseCBPC, true)
    Debug.Notification("CBPC setting changed. Save/Reload to take effect")
  elseif oid == autoUpdateDiaryOID
    autoUpdateDiary = autoUpdateDiaryDefault
    SetToggleOptionValue(oid, autoUpdateDiary)
  elseif oid == updateNarratorDiaryOID
    updateNarratorDiary = updateNarratorDiaryDefault
    SetToggleOptionValue(oid, updateNarratorDiary)
  elseif oid == updateNarratorProfileOID
    updateNarratorProfile = updateNarratorProfileDefault
    SetToggleOptionValue(oid, updateNarratorProfile)
  elseif oid == enableAISexOID
    enableAISex = enableAISexDefault
    aiff.SetAISexEnabled(enableAISex)
    SetToggleOptionValue(oid, enableAISex)
  elseif oid == useSapienceOID
    SetGlobalToggle(oid, minai_SapienceEnabled, false)
    if minai_SapienceEnabled.GetValueInt() == 1
      sapience.StartRadiantDialogue()
    else
      sapience.StopRadiantDialogue()
    EndIf
  elseif oid == cbpcDisableSelfTouchOID
    cbpcDisableSelfTouch = cbpcDisableSelfTouchDefault
    SetToggleOptionValue(oid, cbpcDisableSelfTouchDefault)
  elseif oid == cbpcDisableSelfAssTouchOID
    cbpcDisableSelfAssTouch = cbpcDisableSelfAssTouchDefault
    SetToggleOptionValue(oid, cbpcDisableSelfAssTouchDefault)
  elseif oid == cbpcSelfTouchThresholdOID
    cbpcSelfTouchThreshold = cbpcSelfTouchThresholdDefault
    SetSliderOptionValue(cbpcSelfTouchThresholdOID, cbpcSelfTouchThresholdDefault, "{1}")
  elseif oid == cbpcOtherTouchThresholdOID
    cbpcOtherTouchThreshold = cbpcOtherTouchThresholdDefault
    SetSliderOptionValue(cbpcOtherTouchThresholdOID, cbpcOtherTouchThresholdDefault, "{1}")
  elseif oid ==  collisionCooldownOID
    collisionCooldown = collisionCooldownDefault
    SetSliderOptionValue(collisionCooldownOID, collisionCooldownDefault, "{1}")
  elseif oid ==  collisionSpeechCooldownOID
    collisionSpeechCooldown = collisionSpeechCooldownDefault
    SetSliderOptionValue(collisionSpeechCooldownOID, collisionSpeechCooldownDefault, "{1}")
  elseif oid ==  collisionSexCooldownOID
    collisionSexCooldown = collisionSexCooldownDefault
    SetSliderOptionValue(collisionSexCooldownOID, collisionSexCooldownDefault, "{1}")
  elseif oid ==  allowDeviceLockOID
    allowDeviceLock = allowDeviceLockDefault
    SetToggleOptionValue(oid, allowDeviceLock)
    StoreConfig("allowDeviceLock", allowDeviceLock)
  elseif oid ==  allowDeviceUnlockOID
    allowDeviceUnlock = allowDeviceUnlockDefault
    SetToggleOptionValue(oid, allowDeviceUnlock)
    StoreConfig("allowDeviceUnlock", allowDeviceUnlock)
  elseif oid == requestResponseCooldownOID
    requestResponseCooldown = requestResponseCooldownDefault
    SetSliderOptionValue(requestResponseCooldownOID, requestResponseCooldownDefault, "{1}")
  elseif oid ==  arousalForSexOID
    arousalForSex = arousalForSexDefault
    SetSliderOptionValue(arousalForSexOID, arousalForSexDefault, "{0}")
  elseif oid ==  minRadianceRechatsOID
    minRadianceRechats = minRadianceRechatsDefault
    SetSliderOptionValue(minRadianceRechatsOID, minRadianceRechatsDefault, "{0}")
  elseif oid ==  maxRadianceRechatsOID
    maxRadianceRechats = maxRadianceRechatsDefault
    SetSliderOptionValue(maxRadianceRechatsOID, maxRadianceRechatsDefault, "{0}")
  elseif oid ==  arousalForHarassOID
    arousalForHarass = arousalForHarassDefault
    SetSliderOptionValue(arousalForHarassOID, arousalForHarassDefault, "{0}")
  elseif oid ==  confirmSexOID
    confirmSex = confirmSexDefault
    SetToggleOptionValue(oid, confirmSex)
  elseif oid == allowSexTransitionsOID
    allowSexTransitions = allowSexTransitionsDefault
    SetToggleOptionValue(oid, allowSexTransitions)
    aiff.SetActorVariable(game.GetPlayer(), "allowSexTransitions", allowSexTransitions)
  elseif oid == toggleCombatDialogueOID
    toggleCombatDialogue = toggleCombatDialogueDefault
    if toggleCombatDialogue
      sapience.EnableCombatDialogue()
    else
      sapience.DisableCombatDialogue()
    EndIf
    SetToggleOptionValue(oid, toggleCombatDialogue)
  elseif oid == disableAIAnimationsOID
    disableAIAnimations = disableAIAnimationsDefault
    SetToggleOptionValue(oid, disableAIAnimationsDefault)
  elseif oid ==  radiantDialogueFrequencyOID
    radiantDialogueFrequency = radiantDialogueFrequencyDefault
    SetSliderOptionValue(radiantDialogueFrequencyOID, radiantDialogueFrequencyDefault, "{1}")
  elseif oid ==  radiantDialogueChanceOID
    radiantDialogueChance = radiantDialogueChanceDefault
    SetSliderOptionValue(radiantDialogueChanceOID, radiantDialogueChanceDefault, "{1}")
  elseif oid == genderWeightCommentsOID
    genderWeightComments = genderWeightCommentsDefault
    SetSliderOptionValue(oid, genderWeightCommentsDefault, "{0}")
  elseif oid == commentsRateOID
    commentsRate = commentsRateDefault
    SetSliderOptionValue(oid, commentsRateDefault, "{0}")
  elseif oid == forceOrgasmCommentOID
    forceOrgasmComment = forceOrgasmCommentDefault
    SetToggleOptionValue(oid, forceOrgasmCommentDefault)
  elseif oid == forcePostSceneCommentOID
    forcePostSceneComment = forcePostSceneCommentDefault
    SetToggleOptionValue(oid, forcePostSceneCommentDefault)
  elseif oid == prioritizePlayerThreadOID
    prioritizePlayerThread = prioritizePlayerThreadDefault
    SetToggleOptionValue(oid, prioritizePlayerThreadDefault)
  elseif oid == enableAmbientCommentsOID
    enableAmbientComments = enableAmbientCommentsDefault
    SetToggleOptionValue(oid, enableAmbientCommentsDefault)
  elseif oid == maxThreadsOID
    maxThreads = maxThreadsDefault
    SetSliderOptionValue(oid, maxThreadsDefault, "{0}")
  elseif oid == updateNarratorProfileOID
    updateNarratorProfile = updateNarratorProfileDefault
    SetToggleOptionValue(oid, updateNarratorProfile)
  elseif oid == preserveQueueOID
    preserveQueue = preserveQueueDefault
    if preserveQueue
      aiff.EnablePreserveQueue()
    else
      aiff.DisablePreserveQueue()
    EndIf
    SetToggleOptionValue(oid, preserveQueueDefault)
  elseif oid == trackVictimAwarenessOID
    trackVictimAwareness = trackVictimAwarenessDefault
    SetToggleOptionValue(oid, trackVictimAwareness)
  elseif oid == disableSapienceInStealthOID
    disableSapienceInStealth = disableSapienceInStealthDefault
    SetToggleOptionValue(oid, disableSapienceInStealth)
  elseif oid == enableRadiantDialogueOID
    enableRadiantDialogue = enableRadiantDialogueDefault
    if enableRadiantDialogue
      sapience.StartRadiantDialogue()
    else
      sapience.StopRadiantDialogue()
    EndIf
    SetToggleOptionValue(oid, enableRadiantDialogue)
  elseif oid == enableAIAgentSetConfOID
    enableAIAgentSetConf = !enableAIAgentSetConf
    SetToggleOptionValue(oid, enableAIAgentSetConf)
  elseif oid == enableAIAgentLogMessageOID
    enableAIAgentLogMessage = !enableAIAgentLogMessage
    SetToggleOptionValue(oid, enableAIAgentLogMessage)
  elseif oid == enableAIAgentSetAnimationBusyOID
    enableAIAgentSetAnimationBusy = !enableAIAgentSetAnimationBusy
    SetToggleOptionValue(oid, enableAIAgentSetAnimationBusy)
  elseif oid == enableAIAgentFindAllNearbyAgentsOID
    enableAIAgentFindAllNearbyAgents = !enableAIAgentFindAllNearbyAgents
    SetToggleOptionValue(oid, enableAIAgentFindAllNearbyAgents)
  elseif oid == enableAIAgentGetAgentByNameOID
    enableAIAgentGetAgentByName = !enableAIAgentGetAgentByName
    SetToggleOptionValue(oid, enableAIAgentGetAgentByName)
  elseif oid == enableAIAgentRemoveAgentByNameOID
    enableAIAgentRemoveAgentByName = !enableAIAgentRemoveAgentByName
    SetToggleOptionValue(oid, enableAIAgentRemoveAgentByName)
  elseif oid == enableAIAgentSetDrivenByAIAOID
    enableAIAgentSetDrivenByAIA = !enableAIAgentSetDrivenByAIA
    SetToggleOptionValue(oid, enableAIAgentSetDrivenByAIA)
  elseif oid == enableAIAgentRequestMessageForActorOID
    enableAIAgentRequestMessage = !enableAIAgentRequestMessage
    SetToggleOptionValue(oid, enableAIAgentRequestMessage)
  elseif oid == enableAIAgentRecordSoundExOID
    enableAIAgentRecordSoundEx = !enableAIAgentRecordSoundEx
    SetToggleOptionValue(oid, enableAIAgentRecordSoundEx)
  elseif oid == enableAIAgentStopRecordingOID
    enableAIAgentStopRecording = !enableAIAgentStopRecording
    SetToggleOptionValue(oid, enableAIAgentStopRecording)
  elseif oid == enableAIAgentLogMessageForActorOID
    enableAIAgentLogMessageForActor = True ; Default value
    SetToggleOptionValue(oid, enableAIAgentLogMessageForActor)
  elseif oid == logLevelOID
    logLevel = logLevelDefault
    SetSliderOptionValue(oid, logLevelDefault, "{0}")
  EndIf
EndEvent

Event OnOptionHighlight(int oid)
  Main.Debug("OnOptionHighlight(" + oid + ")")
  if oid == enableConsoleLoggingOID
    SetInfoText("$MINAI_CONSOLE_LOGGING_INFO")
  elseif oid == UseCBPCOID
    SetInfoText("$MINAI_CBPC_GLOBAL_INFO")
  elseif oid == autoUpdateDiaryOID
    SetInfoText("$MINAI_AUTO_UPDATE_DIARY_INFO")
  elseif oid == updateNarratorDiaryOID
    SetInfoText("$MINAI_UPDATE_NARRATOR_DIARY_INFO")
  elseif oid == updateNarratorProfileOID
    SetInfoText("$MINAI_UPDATE_NARRATOR_PROFILE_INFO")
  elseif oid == enableAISexOID
    SetInfoText("$MINAI_ENABLE_AI_SEX_INFO")
  elseif  oid == useSapienceOID
    SetInfoText("$MINAI_USE_SAPIENCE_INFO")
  elseif oid == cbpcDisableSelfTouchOID
    SetInfoText("$MINAI_CBPC_DISABLE_SELF_TOUCH_INFO")
  elseif oid == cbpcDisableSelfAssTouchOID
    SetInfoText("$MINAI_CBPC_DISABLE_SELF_ASS_TOUCH_INFO")
  elseif oid == cbpcOtherTouchThresholdOID
    SetInfoText("$MINAI_CBPC_OTHER_TOUCH_THRESHOLD_INFO")
  elseif oid == cbpcSelfTouchThresholdOID
    SetInfoText("$MINAI_CBPC_SELF_TOUCH_THRESHOLD_INFO")
  elseif oid == collisionCooldownOID
    SetInfoText("$MINAI_COLLISION_COOLDOWN_INFO")
  elseif oid == collisionSpeechCooldownOID
    SetInfoText("$MINAI_COLLISION_SPEECH_COOLDOWN_INFO")
  elseif oid == radiantDialogueFrequencyOID
    SetInfoText("$MINAI_RADIANT_DIALOGUE_FREQUENCY_INFO")
  elseif oid == radiantDialogueChanceOID
    SetInfoText("$MINAI_RADIANT_DIALOGUE_CHANCE_INFO")
  elseif oid == collisionSexCooldownOID
    SetInfoText("$MINAI_COLLISION_SEX_COOLDOWN_INFO")
  elseif oid == allowDeviceLockOID
    SetInfoText("$MINAI_ALLOW_DEVICE_LOCK_INFO")
  elseif oid == allowDeviceUnlockOID
    SetInfoText("$MINAI_ALLOW_DEVICE_UNLOCK_INFO")
  elseif oid == requestResponseCooldownOID
    SetInfoText("$MINAI_REQUEST_RESPONSE_COOLDOWN_INFO")
  elseif oid == arousalForSexOID
    SetInfoText("$MINAI_AROUSAL_FOR_SEX_INFO")
  elseif oid == minRadianceRechatsOID
    SetInfoText("$MINAI_MIN_RADIANCE_RECHATS_INFO")
  elseif oid == maxRadianceRechatsOID
    SetInfoText("$MINAI_MAX_RADIANCE_RECHATS_INFO")
  elseif oid == arousalForHarassOID
    SetInfoText("$MINAI_AROUSAL_FOR_HARASS_INFO")
  elseif oid == confirmSexOID
    SetInfoText("$MINAI_CONFIRM_SEX_INFO")
  elseif oid == allowActorsToJoinSexOID
    SetInfoText("$MINAI_ALLOW_ACTORS_TO_JOIN_SEX_INFO")
  elseif oid == allowSexTransitionsOID
    SetInfoText("$MINAI_ALLOW_SEX_TRANSITIONS_INFO")
  elseif oid == toggleCombatDialogueOID
    SetInfoText("$MINAI_TOGGLE_COMBAT_DIALOGUE_INFO")
  elseif oid == disableAIAnimationsOID
    SetInfoText("$MINAI_DISABLE_AI_ANIMATIONS_INFO")
  elseif oid == genderWeightCommentsOID
    SetInfoText("$MINAI_GENDER_WEIGHT_COMMENTS_INFO")
  elseif oid == commentsRateOID
    SetInfoText("$MINAI_COMMENTS_RATE_INFO")
  elseif oid == forceOrgasmCommentOID
    SetInfoText("$MINAI_FORCE_ORGASM_COMMENT_INFO")
  elseif oid == forcePostSceneCommentOID
    SetInfoText("$MINAI_FORCE_POST_SCENE_COMMENT_INFO")
  elseif oid == prioritizePlayerThreadOID
    SetInfoText("$MINAI_PRIORITIZE_PLAYER_THREAD_INFO")
  elseif oid == actionEnabledOID
    SetInfoText("$MINAI_ACTION_ENABLED_INFO")
  elseif oid == actionIntervalOID
    SetInfoText("$MINAI_ACTION_INTERVAL_INFO")
  elseif oid == actionExponentOID
    SetInfoText("$MINAI_ACTION_EXPONENT_INFO")
  elseif oid == actionMaxIntervalOID
    SetInfoText("$MINAI_ACTION_MAX_INTERVAL_INFO")
  elseif oid == actionDecayWindowOID
    SetInfoText("$MINAI_ACTION_DECAY_WINDOW_INFO")
  elseif oid == testActionsOID
    SetInfoText("$MINAI_TEST_ACTIONS_INFO")
  elseif oid == addSpellsOID
    SetInfoText("$MINAI_ADD_SPELLS_INFO")
  elseif oid == toggleSapienceOID
    SetInfoText("$MINAI_TOGGLE_SAPIENCE_INFO")
  elseif oid == removeSpellsOID
    SetInfoText("$MINAI_REMOVE_SPELLS_INFO")
  elseif oid == enableAmbientCommentsOID
    SetInfoText("$MINAI_ENABLE_AMBIENT_COMMENTS_INFO")
  elseif oid == maxThreadsOID
    SetInfoText("$MINAI_MAX_THREADS_INFO")
  elseif oid == singKeyOID
    SetInfoText("$MINAI_SING_KEY_INFO")
  elseif oid == narratorKeyOID
    SetInfoText("$MINAI_NARRATOR_KEY_INFO")
  elseif oid == narratorTextKeyOID
    SetInfoText("$MINAI_NARRATOR_TEXT_KEY_INFO")
  elseif oid == preserveQueueOID
    SetInfoText("$MINAI_PRESERVE_QUEUE_INFO")
  elseif oid == trackVictimAwarenessOID
    SetInfoText("$MINAI_TRACK_VICTIM_AWARENESS_INFO")
  elseif oid == roleplayKeyOID
    SetInfoText("$MINAI_ROLEPLAY_KEY_INFO")
  elseif oid == roleplayTextKeyOID
    SetInfoText("$MINAI_ROLEPLAY_TEXT_KEY_INFO")
  elseif oid == disableSapienceInStealthOID
    SetInfoText("$MINAI_DISABLE_SAPIENCE_IN_STEALTH_INFO")
  elseif oid == enableRadiantDialogueOID
    SetInfoText("$MINAI_ENABLE_RADIANT_DIALOGUE_INFO")
  elseif oid == enableAIAgentSetConfOID
    SetInfoText("ADVANCED DEBUGGING: Controls AIAgent setConf calls. Do not change unless instructed. Disabling may break core functionality.")
  elseif oid == enableAIAgentLogMessageOID
    SetInfoText("ADVANCED DEBUGGING: Controls AIAgent logMessage calls. Do not change unless instructed. Disabling may break core functionality.")
  elseif oid == enableAIAgentSetAnimationBusyOID
    SetInfoText("ADVANCED DEBUGGING: Controls AIAgent setAnimationBusy calls. Do not change unless instructed. Disabling may break core functionality.")
  elseif oid == enableAIAgentFindAllNearbyAgentsOID
    SetInfoText("ADVANCED DEBUGGING: Controls AIAgent findAllNearbyAgents calls. Do not change unless instructed. Disabling may break core functionality.")
  elseif oid == enableAIAgentGetAgentByNameOID
    SetInfoText("ADVANCED DEBUGGING: Controls AIAgent getAgentByName calls. Do not change unless instructed. Disabling may break core functionality.")
  elseif oid == enableAIAgentRemoveAgentByNameOID
    SetInfoText("ADVANCED DEBUGGING: Controls AIAgent removeAgentByName calls. Do not change unless instructed. Disabling may break core functionality.")
  elseif oid == enableAIAgentSetDrivenByAIAOID
    SetInfoText("ADVANCED DEBUGGING: Controls AIAgent setDrivenByAIA calls. Do not change unless instructed. Disabling may break core functionality.")
  elseif oid == enableAIAgentRequestMessageForActorOID
    SetInfoText("ADVANCED DEBUGGING: Controls AIAgent requestMessageForActor calls. Do not change unless instructed. Disabling may break core functionality.")
  elseif oid == enableAIAgentRequestMessageOID
    SetInfoText("ADVANCED DEBUGGING: Controls AIAgent requestMessage calls. Do not change unless instructed. Disabling may break core functionality.")
  elseif oid == enableAIAgentRecordSoundExOID
    SetInfoText("ADVANCED DEBUGGING: Controls AIAgent recordSoundEx calls. Do not change unless instructed. Disabling may break core functionality.")
  elseif oid == enableAIAgentStopRecordingOID
    SetInfoText("ADVANCED DEBUGGING: Controls AIAgent stopRecording calls. Do not change unless instructed. Disabling may break core functionality.")
  elseif oid == enableAIAgentLogMessageForActorOID
    SetInfoText("ADVANCED DEBUGGING: Controls AIAgent logMessageForActor calls. Do not change unless instructed. Disabling may break core functionality.")
  elseif oid == logLevelOID
    SetInfoText("Controls logging verbosity. 0=None, 1=Fatal, 2=Error, 3=Info, 4=Debug, 5=Verbose, 6=Trace")
  EndIf
  int i = 0
  string[] actions = JMap.allKeysPArray(aiff.actionRegistry)
  while i < actions.Length
    if oid == JMap.getInt(aOIDMap, actions[i])
      int actionObj = JMap.getObj(aiff.actionRegistry, actions[i])
      string mcmDesc = JMap.getStr(actionObj, "mcmDesc")
      Main.Debug("Highlighting action " + actions[i] + " with description " + mcmDesc)
      SetInfoText(mcmDesc)
      return
    EndIf
    i += 1
  EndWhile
EndEvent

Event OnOptionSliderOpen(int oid)
  if oid == cbpcSelfTouchThresholdOID
    SetSliderDialogStartValue(cbpcSelfTouchThreshold)
    SetSliderDialogDefaultValue(cbpcSelfTouchThresholdDefault)
    SetSliderDialogRange(1,100)
    SetSliderDialogInterval(1)
  elseif oid == cbpcOtherTouchThresholdOID
    SetSliderDialogStartValue(cbpcOtherTouchThreshold)
    SetSliderDialogDefaultValue(cbpcOtherTouchThresholdDefault)
    SetSliderDialogRange(1,100)
    SetSliderDialogInterval(1)
  elseif oid == collisionCooldownOID
    SetSliderDialogStartValue(collisionCooldown)
    SetSliderDialogDefaultValue(collisionCooldownDefault)
    SetSliderDialogRange(1, 100)
    SetSliderDialogInterval(0.5)
  elseif oid == collisionSpeechCooldownOID
    SetSliderDialogStartValue(collisionSpeechCooldown)
    SetSliderDialogDefaultValue(collisionSpeechCooldownDefault)
    SetSliderDialogRange(1, 100)
    SetSliderDialogInterval(0.5)
  elseif oid == radiantDialogueFrequencyOID
    SetSliderDialogStartValue(radiantDialogueFrequency)
    SetSliderDialogDefaultValue(radiantDialogueFrequencyDefault)
    SetSliderDialogRange(5, 300)
    SetSliderDialogInterval(0.5)
  elseif oid == radiantDialogueChanceOID
    SetSliderDialogStartValue(radiantDialogueChance)
    SetSliderDialogDefaultValue(radiantDialogueChanceDefault)
    SetSliderDialogRange(0, 100)
    SetSliderDialogInterval(0.5)
  elseif oid == collisionSexCooldownOID
    SetSliderDialogStartValue(collisionSexCooldown)
    SetSliderDialogDefaultValue(collisionSexCooldownDefault)
    SetSliderDialogRange(1, 100)
    SetSliderDialogInterval(0.5)
  elseif oid == requestResponseCooldownOID
    SetSliderDialogStartValue(requestResponseCooldown)
    SetSliderDialogDefaultValue(requestResponseCooldownDefault)
    SetSliderDialogRange(4, 60)
    SetSliderDialogInterval(0.5)
  elseif oid == arousalForSexOID
    SetSliderDialogStartValue(arousalForSex)
    SetSliderDialogDefaultValue(arousalForSexDefault)
    SetSliderDialogRange(0, 100)
    SetSliderDialogInterval(1.0)
  elseif oid == minRadianceRechatsOID
    SetSliderDialogStartValue(minRadianceRechats)
    SetSliderDialogDefaultValue(minRadianceRechatsDefault)
    SetSliderDialogRange(0, 30)
    SetSliderDialogInterval(1.0)
  elseif oid == maxRadianceRechatsOID
    SetSliderDialogStartValue(maxRadianceRechats)
    SetSliderDialogDefaultValue(maxRadianceRechatsDefault)
    SetSliderDialogRange(0, 30)
    SetSliderDialogInterval(1.0)
  elseif oid == arousalForHarassOID
    SetSliderDialogStartValue(arousalForHarass)
    SetSliderDialogDefaultValue(arousalForHarassDefault)
    SetSliderDialogRange(0, 100)
    SetSliderDialogInterval(1.0)
  elseif oid == genderWeightCommentsOID
    SetSliderDialogStartValue(genderWeightComments)
    SetSliderDialogDefaultValue(genderWeightCommentsDefault)
    SetSliderDialogRange(0, 100)
    SetSliderDialogInterval(1.0)
  elseif oid == commentsRateOID
    SetSliderDialogStartValue(commentsRate)
    SetSliderDialogDefaultValue(commentsRateDefault)
    SetSliderDialogRange(0, 120)
    SetSliderDialogInterval(1.0)
  elseIf oid == actionIntervalOID
    int actionObj = JMap.getObj(aiff.actionRegistry, currentAction)
    float value = JMap.getFlt(actionObj, "interval")
    float defaultValue = JMap.getFlt(actionObj, "intervalDefault")
    SetSliderDialogStartValue(value)
    SetSliderDialogDefaultValue(defaultValue)
    SetSliderDialogRange(0, 100)
    SetSliderDialogInterval(0.5)
  elseif oid == actionExponentOID
    int actionObj = JMap.getObj(aiff.actionRegistry, currentAction)
    float value = JMap.getFlt(actionObj, "exponent")
    float defaultValue = JMap.getFlt(actionObj, "exponentDefault")
    SetSliderDialogStartValue(value)
    SetSliderDialogDefaultValue(defaultValue)
    SetSliderDialogRange(0, 100)
    SetSliderDialogInterval(0.5)
  elseif oid == actionMaxIntervalOID
    int actionObj = JMap.getObj(aiff.actionRegistry, currentAction)
    float value = JMap.getFlt(actionObj, "maxInterval")
    float defaultValue = JMap.getFlt(actionObj, "maxIntervalDefault")
    SetSliderDialogStartValue(value)
    SetSliderDialogDefaultValue(defaultValue)
    SetSliderDialogRange(0, 100)
    SetSliderDialogInterval(1)
  elseif oid == actionDecayWindowOID
    int actionObj = JMap.getObj(aiff.actionRegistry, currentAction)
    float value = JMap.getFlt(actionObj, "decayWindow")
    float defaultValue = JMap.getFlt(actionObj, "decayWindowDefault")
    SetSliderDialogStartValue(value)
    SetSliderDialogDefaultValue(defaultValue)
    SetSliderDialogRange(0, 1200)
    SetSliderDialogInterval(5)
  elseif oid == maxThreadsOID
    SetSliderDialogStartValue(maxThreads)
    SetSliderDialogDefaultValue(maxThreadsDefault)
    SetSliderDialogRange(0, 20)
    SetSliderDialogInterval(1.0)
  elseif oid == logLevelOID
    SetSliderDialogStartValue(logLevel)
    SetSliderDialogDefaultValue(logLevelDefault)
    SetSliderDialogRange(0, 6)
    SetSliderDialogInterval(1)
  EndIf
EndEvent

Event OnOptionSliderAccept(int oid, float value)
  if oid == cbpcSelfTouchThresholdOID
    cbpcSelfTouchThreshold = value
    SetSliderOptionValue(oid, value, "{1}")
  elseif oid == cbpcOtherTouchThresholdOID
    cbpcOtherTouchThreshold = value
    SetSliderOptionValue(oid, value, "{1}")
  elseif oid == collisionCooldownOID
    collisionCooldown = value
    SetSliderOptionValue(oid, value, "{1}")
  elseif oid == collisionSpeechCooldownOID
    collisionSpeechCooldown = value
    SetSliderOptionValue(oid, value, "{1}")
  elseif oid == radiantDialogueFrequencyOID
    sapience.StartRadiantDialogue()
    radiantDialogueFrequency = value
    SetSliderOptionValue(oid, value, "{1}")
  elseif oid == radiantDialogueChanceOID
    sapience.StartRadiantDialogue()
    radiantDialogueChance = value
    SetSliderOptionValue(oid, value, "{1}")
  elseif oid == collisionSexCooldownOID
    collisionSexCooldown = value
    SetSliderOptionValue(oid, value, "{1}")
  elseif oid == requestResponseCooldownOID
    requestResponseCooldown = value
    SetSliderOptionValue(oid, value, "{1}")
  elseif oid == arousalForSexOID
    arousalForSex = value
    SetSliderOptionValue(oid, value, "{0}")
    StoreConfig("arousalForSex", arousalForSex)
  elseif oid == minRadianceRechatsOID
    minRadianceRechats = value as Int
    SetSliderOptionValue(oid, value, "{0}")
  elseif oid == maxRadianceRechatsOID
    maxRadianceRechats = value as Int
    SetSliderOptionValue(oid, value, "{0}")
  elseif oid == arousalForHarassOID
    arousalForHarass = value
    SetSliderOptionValue(oid, value, "{0}")
    StoreConfig("arousalForHarass", arousalForHarass)
  elseif oid == genderWeightCommentsOID
    genderWeightComments = value
    SetSliderOptionValue(oid, value, "{0}")
    StoreConfig("genderWeightComments", genderWeightComments)
  elseif oid == commentsRateOID
    commentsRate = value
    SetSliderOptionValue(oid, value, "{0}")
    StoreConfig("commentsRate", commentsRate)
  elseIf oid == actionIntervalOID
    SetActionInterval(currentAction, value)
    SetSliderOptionValue(oid, value, "{1}")
  elseif oid == actionExponentOID
    SetActionExponent(currentAction, value)
    SetSliderOptionValue(oid, value, "{1}")
  elseif oid == actionMaxIntervalOID
    SetActionMaxInterval(currentAction, value)
    SetSliderOptionValue(oid, value, "{0}")
  elseif oid == actionDecayWindowOID
    SetActionDecayWindow(currentAction, value)
    SetSliderOptionValue(oid, value, "{0}")
  elseif oid == maxThreadsOID
    maxThreads = value
    SetSliderOptionValue(oid, value, "{0}")
    StoreConfig("maxThreads", commentsRate)
  elseif oid == logLevelOID
    logLevel = value as Int
    SetSliderOptionValue(oid, value, "{0}")
  EndIf
EndEvent

Event OnOptionKeyMapChange(int a_option, int a_keyCode, string a_conflictControl, string a_conflictName)
    {Called when a key has been remapped}
    bool continue = true
    if (a_conflictControl != "")
        string msg
        if (a_conflictName != "")
            msg = "$MINAI_KEY_ALREADY_MAPPED\n'" + a_conflictControl + "'\n(" + a_conflictName + ")\n\n$MINAI_CONTINUE_CONFIRM"
        else
            msg = "$MINAI_KEY_ALREADY_MAPPED\n'" + a_conflictControl + "'\n\n$MINAI_CONTINUE_CONFIRM"
        endIf
        continue = ShowMessage(msg, true, "$MINAI_YES", "$MINAI_NO")
    endIf

    if (continue)
        if (a_option == toggleSapienceOID)
            toggleSapienceKey = a_keyCode
            SetKeymapOptionValue(a_option, a_keyCode)
            main.SetSapienceKey(true)
        elseif (a_option == singKeyOID)
            singKey = a_keyCode
            SetKeymapOptionValue(a_option, a_keyCode)
            main.SetSingKey(true)
        elseif (a_option == narratorKeyOID)
            narratorKey = a_keyCode 
            SetKeymapOptionValue(a_option, a_keyCode)
            main.SetNarratorKey(true)
        elseif (a_option == narratorTextKeyOID)
            narratorTextKey = a_keyCode
            SetKeymapOptionValue(a_option, a_keyCode)
            main.SetNarratorTextKey(true)
        elseif (a_option == roleplayKeyOID)
            roleplayKey = a_keyCode
            SetKeymapOptionValue(a_option, a_keyCode)
            main.SetRoleplayKey(true)
        elseif (a_option == roleplayTextKeyOID)
            roleplayTextKey = a_keyCode
            SetKeymapOptionValue(a_option, a_keyCode)
            main.SetRoleplayTextKey(true)
        endIf
    endIf
EndEvent