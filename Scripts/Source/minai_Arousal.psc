scriptname minai_Arousal extends Quest

BaboDialogueConfigMenu baboConfigs
slaUtilScr Aroused
SexLabFramework slf

Keyword Property ActorTypeNPC Auto

Keyword SLA_HalfNakedBikini
Keyword SLA_ArmorHalfNaked
Keyword SLA_Brabikini
Keyword SLA_ThongT
Keyword SLA_ArmorSpendex
Keyword SLA_PantiesNormal
Keyword SLA_ThongLowLeg
Keyword SLA_ThongCString
Keyword SLA_KillerHeels
Keyword SLA_PantsNormal
Keyword SLA_MicroHotPants
Keyword SLA_ThongGstring
Keyword SLA_ArmorHarness
Keyword SLA_ArmorTransparent
Keyword SLA_ArmorLewdLeotard
Keyword SLA_PelvicCurtain
Keyword SLA_FullSkirt
Keyword SLA_MiniSkirt
Keyword SLA_MicroSkirt
Keyword SLA_BootsHeels
Keyword SLA_HasLeggings
Keyword SLA_ArmorRubber
Keyword EroticArmor
Keyword SLA_PiercingVulva
Keyword SLA_PiercingBelly
Keyword SLA_PiercingNipple
Keyword SLA_PiercingClit
Keyword TNG_XS
Keyword TNG_S
Keyword TNG_M
Keyword TNG_L
Keyword TNG_XL
Keyword TNG_DefaultSize
Keyword TNG_Gentlewoman
Keyword TNG_Revealing


bool bHasAroused = False
bool bHasArousedKeywords = False
bool bHasBabo = False
bool bHasTNG = False
bool bHasSexlab = False

int cuirassSlot = 0x00000004
int helmetSlot = 0x00000001
int glovesSlot = 0x00000008
int bootsSlot = 0x00000080


minai_MainQuestController main
minai_AIFF aiff
minai_DeviousStuff devious

actor playerRef
bool bHasDDNG = False

function Maintenance(minai_MainQuestController _main)
  playerRef = Game.GetPlayer()
  main = _main
  aiff = (Self as Quest) as minai_AIFF
  devious = (Self as Quest) as minai_DeviousStuff  
  Main.Info("Initializing Arousal Module.")
  
  ; Check if SexLab is installed
  if Game.GetModByName("SexLab.esm") != 255
    Main.Info("Found SexLab")
    bHasSexlab = True
    slf = Game.GetFormFromFile(0xD62, "SexLab.esm") as SexLabFramework
    if !slf
      bHasSexlab = False
      Main.Error("Could not fetch SexLabFramework object")
    EndIf
  EndIf
  
  if Game.GetModByName("SexlabAroused.esm") != 255
    Main.Info("Found Sexlab Aroused")
    bHasAroused = True
    Aroused = Game.GetFormFromFile(0x04290F, "SexlabAroused.esm") as slaUtilScr
    SLA_HalfNakedBikini = Game.GetFormFromFile(0x08E854, "SexlabAroused.esm") as Keyword
    SLA_ArmorHalfNaked = Game.GetFormFromFile(0x08E855, "SexlabAroused.esm") as Keyword
    SLA_Brabikini = Game.GetFormFromFile(0x08E856, "SexlabAroused.esm") as Keyword
    SLA_ThongT = Game.GetFormFromFile(0x08E857, "SexlabAroused.esm") as Keyword
    SLA_ArmorSpendex = Game.GetFormFromFile(0x08E858, "SexlabAroused.esm") as Keyword
    SLA_PantiesNormal = Game.GetFormFromFile(0x08EDC1, "SexlabAroused.esm") as Keyword
    SLA_ThongLowLeg = Game.GetFormFromFile(0x08EDC2, "SexlabAroused.esm") as Keyword
    SLA_ThongCString = Game.GetFormFromFile(0x08EDC3, "SexlabAroused.esm") as Keyword
    SLA_KillerHeels = Game.GetFormFromFile(0x08F326, "SexlabAroused.esm") as Keyword
    SLA_PantsNormal = Game.GetFormFromFile(0x08F3F3, "SexlabAroused.esm") as Keyword
    SLA_MicroHotPants = Game.GetFormFromFile(0x08F3F4, "SexlabAroused.esm") as Keyword
    SLA_ThongGstring = Game.GetFormFromFile(0x08F3F5, "SexlabAroused.esm") as Keyword
    SLA_ArmorHarness = Game.GetFormFromFile(0x08F3FC, "SexlabAroused.esm") as Keyword
    SLA_ArmorTransparent = Game.GetFormFromFile(0x08F3FD, "SexlabAroused.esm") as Keyword
    SLA_ArmorLewdLeotard = Game.GetFormFromFile(0x08F401, "SexlabAroused.esm") as Keyword
    SLA_PelvicCurtain = Game.GetFormFromFile(0x08F402, "SexlabAroused.esm") as Keyword
    SLA_FullSkirt = Game.GetFormFromFile(0x08F40D, "SexlabAroused.esm") as Keyword
    SLA_MiniSkirt = Game.GetFormFromFile(0x08F40E, "SexlabAroused.esm") as Keyword
    SLA_MicroSkirt = Game.GetFormFromFile(0x08F40F, "SexlabAroused.esm") as Keyword
    SLA_BootsHeels = Game.GetFormFromFile(0x08F410, "SexlabAroused.esm") as Keyword
    SLA_HasLeggings = Game.GetFormFromFile(0x08FE9F, "SexlabAroused.esm") as Keyword
    SLA_ArmorRubber = Game.GetFormFromFile(0x08FEA4, "SexlabAroused.esm") as Keyword
    EroticArmor = Game.GetFormFromFile(0x08C7F6, "SexlabAroused.esm") as Keyword
    SLA_PiercingVulva = Game.GetFormFromFile(0x08F3F6, "SexlabAroused.esm") as Keyword
    SLA_PiercingBelly = Game.GetFormFromFile(0x088F3F7, "SexlabAroused.esm") as Keyword
    SLA_PiercingNipple = Game.GetFormFromFile(0x08F3F8, "SexlabAroused.esm") as Keyword
    SLA_PiercingClit = Game.GetFormFromFile(0x08F40B, "SexlabAroused.esm") as Keyword
    
    ; Check a couple keywords to see if it's a stripped down SexlabAroused
    if SLA_HalfNakedBikini && SLA_ArmorHalfNaked
      bHasArousedKeywords = True
    EndIf
    Main.Info("Sexlab Aroused Keywords=" + bHasArousedKeywords)
  EndIf

  if Game.GetModByName("TheNewGentleman.esp") != 255
    bHasTNG = True
	Main.Info("Found TNG")
	TNG_XS = Game.GetFormFromFile(0x03BFE1, "TheNewGentleman.esp") as Keyword
	TNG_S = Game.GetFormFromFile(0x03BFE2, "TheNewGentleman.esp") as Keyword
	TNG_M = Game.GetFormFromFile(0x03BFE3, "TheNewGentleman.esp") as Keyword
	TNG_L = Game.GetFormFromFile(0x03BFE4, "TheNewGentleman.esp") as Keyword
	TNG_XL = Game.GetFormFromFile(0x03BFE5, "TheNewGentleman.esp") as Keyword
	TNG_DefaultSize = Game.GetFormFromFile(0x03BFE0, "TheNewGentleman.esp") as Keyword
	TNG_Gentlewoman = Game.GetFormFromFile(0x03BFF8, "TheNewGentleman.esp") as Keyword
	TNG_Revealing = Game.GetFormFromFile(0x03BFFF, "TheNewGentleman.esp") as Keyword
	if TNG_XS != None && TNG_S != None && TNG_M != None && TNG_L != None && TNG_XL != None && TNG_DefaultSize != None && TNG_Gentlewoman != None && TNG_Revealing != None
		Main.Debug("TNG size keywords retrieved successfully.")
	else
		Main.Error("Failed to retrieve one or more TNG size keywords.")
	EndIf
  EndIf

  if Game.GetModByName("BaboInteractiveDia.esp") != 255
    Main.Info("Found BaboDialogue")
    bHasBabo = True
    baboConfigs = (Game.GetFormFromFile(0x2FEA1B, "BaboInteractiveDia.esp") as BaboDialogueConfigMenu)
    if !baboConfigs
      bHasBabo = False
      Main.Error("Could not fetch baboConfigs")
    EndIf
  EndIf

  if (devious.libs)
    if (devious.libs.GetVersionString() == "5.2-NG")
      bHasDDNG = True
      Main.Info("Found Devious Devices NG")
    else
      bHasDDNG = False
      Main.Info("Non-NG Devious Devices detected")
    EndIf
  EndIf

  aiff.SetModAvailable("Aroused", bHasAroused)
  aiff.SetModAvailable("ArousedKeywords", bHasArousedKeywords)
  aiff.SetModAvailable("Babo", bHasBabo)
  aiff.SetModAvailable("TNG", bHasTNG)
  aiff.RegisterAction("ExtCmdIncreaseArousal", "IncreaseArousal", "AI Arousal Increase", "Arousal", 1, 0, 2, 5, 60, (bHasAroused))
  aiff.RegisterAction("ExtCmdDecreaseArousal", "DecreaseArousal", "AI Arousal Decrease", "Arousal", 1, 0, 2, 5, 60, (bHasAroused))
EndFunction


Function UpdateArousal(actor akTarget, int Arousal)
  If bHasAroused
    Aroused.UpdateActorExposure(akTarget, Arousal)
  EndIf
EndFunction


int Function GetActorArousal(actor akActor)
  int exposure = 0
  if bHasAroused
   exposure = aroused.GetActorArousal(akActor)
  EndIf
  return exposure
EndFunction


Function WriteArousedString(bool bPlayerInScene, actor Player, actor[] actorsFromFormList)
  int numActors = actorsFromFormList.Length
  int i = 0
  while (i < numActors)
    Actor currentActor = actorsFromFormList[i]
    if (currentActor != None)
      String actorName = main.GetActorName(currentActor)
      int arousal = GetActorArousal(currentActor)
      main.RegisterAction(actorName + "'s sexual arousal level is " + arousal + "%.")
    EndIf
    i += 1
  EndWhile
  if bPlayerInScene
    String actorName = main.GetActorName(player)
    int exposure = GetActorArousal(player)
    if player.getActorBase().getSex() == 0 ; Male
      If exposure >= 99
        main.RegisterAction(actorName + " appears to have a raging erection that is difficult to hide. " + actorName + " appears to be absolutely desperate for sex.")
      ElseIf exposure >= 85
        main.RegisterAction(actorName + " appears to have a raging erection that is difficult to hide.")
      ElseIf exposure >= 70
        main.RegisterAction(actorName + " appears to be aroused, and has flushed cheeks. ")
      Elseif exposure >= 50
        main.RegisterAction(actorName + " appears to be mildly turned on, and is blushing slightly.")
      EndIf
    else ; Female, or other
      If exposure >= 99
        main.RegisterAction(actorName + " appears to be extremely aroused, and looks to be absolutely desperate for sex. She has heavy breathing, pointy nipples, and flushed cheeks.")
      ElseIf exposure >= 85
        main.RegisterAction(actorName + " appears to be very aroused, with pointy nipples and heavy breathing.")
      ElseIf exposure >= 70
        main.RegisterAction(actorName + " appears to be aroused, and has flushed cheeks.")
      Elseif exposure >= 50
        main.RegisterAction(actorName + " appears to be mildly turned on, and is blushing slightly.")
      EndIf
    EndIf
	EndIf
EndFunction


function WriteClothingString(actor akActor, actor player, bool isYou=false, actor[] actorsFromFormList)
	int numActors = actorsFromFormList.Length
	int i = 0
	While (i < numActors)
		Actor currentActor = actorsFromFormList[i]
		if (currentActor != None)
			String actorName = main.GetActorName(currentActor)
			Armor cuirass = currentActor.GetWornForm(cuirassSlot) as Armor
			Armor helmet = currentActor.GetWornForm(helmetSlot) as Armor
			Armor gloves = currentActor.GetWornForm(glovesSlot) as Armor
			Armor boots = currentActor.GetWornForm(bootsSlot) as Armor
			
			if cuirass == None
				main.RegisterAction(actorName + " is naked.")
			else
				main.RegisterAction(actorName + " is wearing " + cuirass.GetName())
			EndIf
			
			if helmet != None
				main.RegisterAction(actorName + " is wearing " + helmet.GetName() + " on their head.")
			EndIf
			
			if gloves != None
				main.RegisterAction(actorName + " is wearing " + gloves.GetName() + " on their hands.")
			EndIf
			
			if boots != None
				main.RegisterAction(actorName + " is wearing " + boots.GetName() + " on their feet.")
			EndIf
			
			if bHasTNG
				bool exposed = IsTNGExposed(currentActor)
				if exposed && currentActor.HasKeyword(ActorTypeNPC) && ((currentActor.GetActorBase().GetSex() == 0) || currentActor.HasKeyword(TNG_Gentlewoman))
					main.RegisterAction(actorName + "'s genitals are exposed.")
          string sizeDescription = ""
          Main.Debug("TNG Dick Check on "+ actorName)
          int TNG_Size = TNG_PapyrusUtil.GetActorSize(currentactor)
          if currentActor.HasKeyword(TNG_XL) || TNG_Size == 4
            sizeDescription = "one of the biggest cocks you've ever seen"
          elseif currentActor.HasKeyword(TNG_L) || TNG_Size == 3
            sizeDescription = "a large cock"
          elseif currentActor.HasKeyword(TNG_M) || currentActor.HasKeyword(TNG_DefaultSize) || TNG_Size == 2
            sizeDescription = "an average sized cock"
          elseif currentActor.HasKeyword(TNG_S) || TNG_Size == 1
            sizeDescription = "a very small cock"
          elseif currentActor.HasKeyword(TNG_XS) || TNG_Size == 0
            sizeDescription = "an embarrassingly tiny prick"
          EndIf
          
          if sizeDescription != ""
            main.RegisterAction("You can see that " + actorName + " has " + sizeDescription + ".")
          else
            Main.Info("TNG Dick Check Failed on " + actorName)
          EndIf
				EndIf
			EndIf
			if !bHasArousedKeywords
				return
			EndIf
			if SLA_HalfNakedBikini != None
        if currentActor.WornHasKeyword(SLA_HalfNakedBikini)
          main.RegisterAction(actorName + " is wearing a set of revealing bikini armor.")
        EndIf
      EndIf
      if SLA_ArmorHalfNaked != None
        if currentActor.WornHasKeyword(SLA_ArmorHalfNaked)
          main.RegisterAction(actorName + " is wearing very revealing attire, leaving them half naked.")
        EndIf
      EndIf
      if SLA_Brabikini != None
        if currentActor.WornHasKeyword(SLA_Brabikini)
          main.RegisterAction(actorName + " is wearing a bra underneath her other equipment.")
        EndIf
      EndIf
      if SLA_ThongT != None
        if currentActor.WornHasKeyword(SLA_ThongT)
          main.RegisterAction(actorName + " is wearing a thong underneath her other equipment.")
        EndIf
      EndIf
      if SLA_ThongLowLeg != None
        if currentActor.WornHasKeyword(SLA_ThongLowLeg)
          main.RegisterAction(actorName + " is wearing a thong underneath her other equipment.")
        EndIf
      EndIf
      if SLA_ThongCString != None
        if currentActor.WornHasKeyword(SLA_ThongCString)
          main.RegisterAction(actorName + " is wearing a thong underneath her other equipment.")
        EndIf
      EndIf
      if SLA_ThongGstring != None
        if currentActor.WornHasKeyword(SLA_ThongGstring)
          main.RegisterAction(actorName + " is wearing a thong underneath her other equipment.")
        EndIf
      EndIf
      if SLA_PantiesNormal != None
        if currentActor.WornHasKeyword(SLA_PantiesNormal)
          main.RegisterAction(actorName + " is wearing plain panties underneath her other equipment.")
        EndIf
      EndIf
			if SLA_KillerHeels != None
        if currentActor.WornHasKeyword(SLA_KillerHeels)
          main.RegisterAction(actorName + " is wearing a set of high-heels.")
        EndIf
      EndIf
      if SLA_BootsHeels != None
        if currentActor.WornHasKeyword(SLA_BootsHeels)
          main.RegisterAction(actorName + " is wearing a set of high-heels.")
        EndIf
      EndIf
      if SLA_PantsNormal
        if currentActor.WornHasKeyword(SLA_PantsNormal)
          main.RegisterAction(actorName + " is wearing a set of ordinary pants.")
        EndIf
      EndIf
			if SLA_MicroHotPants != None
        if currentActor.WornHasKeyword(SLA_MicroHotPants)
          main.RegisterAction(actorName + " is wearing a set of short hot-pants that accentuate her ass.")
        EndIf
      EndIf
      if SLA_ArmorHarness != None
        if currentActor.WornHasKeyword(SLA_ArmorHarness)
          main.RegisterAction(actorName + " is wearing a form-fitting body harness.")
        EndIf
      EndIf
      if SLA_ArmorSpendex != None
        if currentActor.WornHasKeyword(SLA_ArmorSpendex)
          main.RegisterAction(actorName + "'s outfit is made out of latex (Referred to as Ebonite).")
        EndIf
      EndIf
			if SLA_ArmorTransparent != None
        if currentActor.WornHasKeyword(SLA_ArmorTransparent)
          main.RegisterAction(actorName + "'s outfit is transparent, leaving nothing to the imagination.")
        EndIf
      EndIf
			if SLA_ArmorLewdLeotard != None
        if currentActor.WornHasKeyword(SLA_ArmorLewdLeotard)
          main.RegisterAction(actorName + " is wearing a sheer, revealing leotard leaving very little to the imagination.")
        EndIf
      EndIf
      if SLA_PelvicCurtain != None
        if currentActor.WornHasKeyword(SLA_PelvicCurtain)
          main.RegisterAction(actorName + "'s pussy is covered only by a sheer curtain of fabric.")
        EndIf
      EndIf
			if SLA_FullSkirt != None
        if currentActor.WornHasKeyword(SLA_FullSkirt)
          main.RegisterAction(actorName + " is wearing a full length skirt that goes down to her knees.")
        EndIf
			EndIf
      if SLA_MiniSkirt != None
        if currentActor.WornHasKeyword(SLA_MiniSkirt)
          main.RegisterAction(actorName + " is wearing a short mini-skirt that barely covers her ass. Her underwear or panties are sometimes visible underneath when she moves.")
        EndIf
      EndIf
      if SLA_MicroSkirt != None
        if currentActor.WornHasKeyword(SLA_MicroSkirt)
          main.RegisterAction(actorName + " is wearing a micro mini-skirt exposes her ass. Her underwear or panties are visible underneath when she moves.")
        EndIf
      EndIf
      if SLA_ArmorRubber != None
        if currentActor.WornHasKeyword(SLA_ArmorRubber)
          main.RegisterAction(actorName + "'s outfit is made out of tight form-fitting rubber (Referred to as Ebonite).")
        EndIf
      EndIf
      if EroticArmor != None
        if currentActor.WornHasKeyword(EroticArmor)
          main.RegisterAction(actorName + "'s outfit is sexy and revealing.")
        EndIf
      EndIf
			if SLA_PiercingNipple != None
        if currentActor.WornHasKeyword(SLA_PiercingNipple)
          main.RegisterAction(actorName + " has nipple piercings.")
        EndIf
      EndIf
      if SLA_PiercingBelly != None
        if currentActor.WornHasKeyword(SLA_PiercingBelly)
          main.RegisterAction(actorName + " has a navel piercing.")
        EndIf
      EndIf
			if SLA_PiercingVulva != None
        if currentActor.WornHasKeyword(SLA_PiercingVulva)
          main.RegisterAction(actorName + " has labia piercings.")
        EndIf
      EndIf
      if SLA_PiercingClit != None
        if currentActor.WornHasKeyword(SLA_PiercingClit)
          main.RegisterAction(actorName + " has a clitoris piercing.")
        EndIf
      EndIf
		EndIf
		i += 1
	EndWhile
EndFunction


Function WritePlayerAppearance(Actor player)
  ;; Appearance
  string actorRace = (player.GetActorBase().GetRace() as Form).GetName()
  int cotrIndex = StringUtil.Find(actorRace, " DZ")
  if cotrIndex != -1
    actorRace = StringUtil.Substring(actorRace, 0, cotrIndex)
  endif
  string gender = ""
  int sexInt = player.GetActorBase().GetSex()
  if sexInt == 0
    gender = "male"
  elseif sexInt == 1
    gender = "female"
  else
    gender = "transgender"
  endif
  if bHasBabo
    String appearance = ""
    string breasts = ""
    string butt = ""
    int beautyInt = baboConfigs.BeautyValue.GetValueInt()
    if beautyInt < 20
      appearance = "rather ugly"
    elseif beautyInt < 40
      appearance = "below average (In appearance)"
    elseif beautyInt < 60
      appearance = "average (In appearance)"
    elseif beautyInt < 80
      appearance = "rather attractive"
    else
      appearance = "absolutely gorgeous"
    endif
    
    int breastsInt = baboConfigs.BreastsValue.GetValueInt()
    if breastsInt < 20
      breasts = "flat breasts"
    elseif breastsInt < 40
      breasts = "small breasts"
    elseif breastsInt < 60
      breasts = "average breasts"
    elseif breastsInt < 80
      breasts = "large boobs"
    else
      breasts = "enormous tits"
    endif
    int buttInt = baboConfigs.ButtocksValue.GetValueInt()
    if buttInt < 20
      butt = "flat ass"
    elseif buttInt < 40
      butt = "small muscular ass"
    elseif buttInt < 60
      butt = "average typical ass"
    elseif buttInt < 80
      butt = "large thick ass"
    else
      butt = "enormous beautiful ass"
    endif
    string appearanceStr = main.GetActorName(player) + " is an " + appearance + " " + actorRace + " " + gender + " with " + breasts + " and a " + butt + "."
    Main.Info("Set player description (Babo): " + appearanceStr)
    main.RegisterAction(appearanceStr)
  else
    string appearanceStr = Main.GetActorName(Player) + " is a " + gender + " " + actorRace + "." 
    Main.Info("Set player description: " + appearanceStr)
    main.RegisterAction(appearanceStr)
  EndIf
EndFunction


Function UpdateEvents(Actor actorToSpeakTo, Actor actorSpeaking, actor[] actorsFromFormList, bool bPlayerInScene, string targetName, string speakerName, string playerName)
  if bPlayerInScene
    WritePlayerAppearance(playerRef)
  EndIf

  if bHasAroused
    WriteArousedString(bPlayerInScene, playerRef, actorsFromFormList)
    WriteClothingString(actorSpeaking, playerRef, True, actorsFromFormList)
  EndIf

EndFunction

Function ActionResponse(actor akTarget, actor akSpeaker, string sayLine, actor[] actorsFromFormList)
    If stringutil.Find(sayLine, "-thats hot-") != -1
      UpdateArousal(akSpeaker, 6)
      Debug.Notification(Main.GetActorName(akSpeaker) + " is getting more turned on.")
    EndIf
    If stringutil.Find(sayLine, "-eww-") != -1
      UpdateArousal(akSpeaker, -12)
      Debug.Notification(Main.GetActorName(akSpeaker) + " is getting less turned on.")
    EndIf
EndFunction


Event CommandDispatcher(String speakerName,String  command, String parameter)
  Actor akSpeaker=aiff.AIGetAgentByName(speakerName)
  actor akTarget= aiff.AIGetAgentByName(parameter)
  if !akTarget
    akTarget = PlayerRef
  EndIf
  if (akTarget.IsChild())
    Main.Warn(Main.GetActorName(akTarget) + " is a child actor. Not processing actions.")
    return
  EndIf
  Main.Debug("Arousal - CommandDispatcher(" + speakerName +", " + command +", " + parameter + ")")
  string targetName = main.GetActorName(akTarget)
  if command == "ExtCmdIncreaseArousal"
    UpdateArousal(akSpeaker, 6)
    Debug.Notification(Main.GetActorName(akSpeaker) + " is getting more turned on.")
    Main.RegisterEvent(""+speakerName+"'s arousal level increased.", "info_arousal_increase")
  EndIf
  if command == "ExtCmdDecreaseArousal"
    UpdateArousal(akSpeaker, -12)
    Debug.Notification(Main.GetActorName(akSpeaker) + " is getting less turned on.")
    Main.RegisterEvent(""+speakerName+"'s arousal level decreased.", "info_arousal_decrease")
  EndIf
EndEvent

Function SetContextHighFrequency(actor akTarget)
  Main.Debug("SetContextHighFrequency(" + main.GetActorName(akTarget) + ")")
  aiff.SetActorVariable(akTarget, "arousal", GetActorArousal(akTarget))
EndFunction


Function SetContext(actor akTarget)
  Main.Debug("SetContext Arousal(" + main.GetActorName(akTarget) + ")")
  if !aiff
    return
  EndIf
  String actorName = main.GetActorName(akTarget)
  Armor cuirass = akTarget.GetWornForm(cuirassSlot) as Armor
  Armor helmet = akTarget.GetWornForm(helmetSlot) as Armor
  Armor gloves = akTarget.GetWornForm(glovesSlot) as Armor
  Armor boots = akTarget.GetWornForm(bootsSlot) as Armor
  
  aiff.SetActorVariable(akTarget, "isnaked", !cuirass)
  aiff.SetActorVariable(akTarget, "isexposed", IsTNGExposed(akTarget))
  
  if cuirass == None
    aiff.SetActorVariable(akTarget, "cuirass", "")
  Else
    aiff.SetActorVariable(akTarget, "cuirass", cuirass.GetName())
  EndIf

  if helmet == None
    aiff.SetActorVariable(akTarget, "helmet", "")
  Else
    aiff.SetActorVariable(akTarget, "helmet", helmet.GetName())
  EndIf

  if gloves == None
    aiff.SetActorVariable(akTarget, "gloves", "")
  Else
    aiff.SetActorVariable(akTarget, "gloves", gloves.GetName())
  EndIf

  if boots == None
    aiff.SetActorVariable(akTarget, "boots", "")
  Else
    aiff.SetActorVariable(akTarget, "boots", boots.GetName())
  EndIf

  string wornEquipments = GetWornEquipments(akTarget)
  aiff.SetActorVariable(akTarget, "AllWornEquipment", wornEquipments)
  
  if !bHasArousedKeywords
  	return
  EndIf
  if bHasBabo && akTarget == PlayerRef
    aiff.SetActorVariable(akTarget, "beautyScore", baboConfigs.BeautyValue.GetValueInt())
    aiff.SetActorVariable(akTarget, "breastsScore", baboConfigs.BreastsValue.GetValueInt())
    aiff.SetActorVariable(akTarget, "buttScore", baboConfigs.ButtocksValue.GetValueInt())
  EndIf
  
  string gender = "male"
  int genderValue = 0
  
  if bHasSexlab && slf
    ; Use SexLab gender if available (0 = male, 1 = female, 2 = other)
    genderValue = slf.GetGender(akTarget)
    if genderValue == 0
      gender = "male"
    elseif genderValue == 1
      gender = "female"
    else
      gender = "futa"
    EndIf
  else
    ; Fallback to vanilla gender
    if akTarget.GetActorBase().GetSex() != 0
      gender = "female"
    EndIf
  EndIf
  
  aiff.SetActorVariable(akTarget, "gender", gender)
  
  if bHasTNG && akTarget.HasKeyword(ActorTypeNPC) && (gender == "male" || akTarget.HasKeyword(TNG_Gentlewoman))
    aiff.SetActorVariable(akTarget, "tngsize", TNG_PapyrusUtil.GetActorSize(akTarget))
  EndIf
  string actorRace = (akTarget.GetActorBase().GetRace() as Form).GetName()
  int cotrIndex = StringUtil.Find(actorRace, " DZ")
  if cotrIndex != -1
    actorRace = StringUtil.Substring(actorRace, 0, cotrIndex)
  EndIf
  if actorRace == "fox"
    actorRace = "nord"
  EndIf
  aiff.SetActorVariable(akTarget, "race", actorRace)
EndFunction

; Because escaping characters can be expensive, perform length encoding
; instead of escaping the string
string Function LengthEncodedString(string str)
  if (!str || str == "") 
    ; use empty string instead to save space
    return ""
  EndIf

  int len = StringUtil.GetLength(str)
  ; using integer instead of hex, most of the name should be less than 99 characters (so 2 digits)
  ; the IntToString hex will return 4 characters 0xFF
  return PO3_SKSEFunctions.IntToString(len, false) + "#" + str
EndFunction

string Function GetWornEquipments(Actor target)
  ; Encoding format: base form id:esp:slotMasks:keywords:name
  string wornEquipments = ""
  int index
  int slotsChecked
  ; slotsChecked += 0x00100000
  ; slotsChecked += 0x00200000
  ; slotsChecked += 0x00400000
  slotsChecked += 0x80000000

  int currentSlot = 0x01
  while (currentSlot < 0x80000000)
    if (Math.LogicalAnd(slotsChecked, currentSlot) != currentSlot) ;only check slots we haven't found anything equipped on already
      Armor wornArmor = target.GetWornForm(currentSlot) as Armor
      if (wornArmor)
        int slotMask = wornArmor.GetSlotMask()
        string wornArmorName = wornArmor.GetName()
        ; Need both ID and mod name to ensure uniqueness
        string baseFormIdHex = PO3_SKSEFunctions.IntToString(Math.LogicalAnd(wornArmor.GetFormID(), 0x00FFFFFF), true)
        string modName = PO3_SKSEFunctions.GetFormModName(wornArmor, false)
        ; only need to escape "name" as others can't contain any colon
        wornEquipments += baseFormIdHex + ":" + modName + ":" + PO3_SKSEFunctions.IntToString(slotMask, true) + ":" + GetKeywordsForEquipments(wornArmor) + ":" + LengthEncodedString(wornArmorName)  + ":"
        slotsChecked += slotMask
      else ;no armor was found on this slot
        slotsChecked += currentSlot
      endif
    endif
    currentSlot *= 2 ;double the number to move on to the next slot
  endWhile
  
  ; Add Devious Devices if available
  if bHasDDNG
    Main.Debug("Getting Devious Devices for " + Main.GetActorName(target))
    Armor[] ddDevices = zadNativeFunctions.GetDevices(target, 0, True)
    if ddDevices && ddDevices.Length > 0
      int i = 0
      while i < ddDevices.Length
        Armor ddArmor = ddDevices[i]
        if ddArmor
          int slotMask = ddArmor.GetSlotMask()
          string ddArmorName = ddArmor.GetName()
          string baseFormIdHex = PO3_SKSEFunctions.IntToString(Math.LogicalAnd(ddArmor.GetFormID(), 0x00FFFFFF), true)
          string modName = PO3_SKSEFunctions.GetFormModName(ddArmor, false)
          wornEquipments += baseFormIdHex + ":" + modName + ":" + PO3_SKSEFunctions.IntToString(slotMask, true) + ":" + GetKeywordsForEquipments(zadNativeFunctions.GetRenderDevice(ddArmor)) + ":" + LengthEncodedString(ddArmorName) + ":"
        endif
        i += 1
      endwhile
    endif
  endif
  
  Main.Debug("GetWornEquipments: " + wornEquipments)
  return wornEquipments
EndFunction

string Function GetEquipmentKeywordWithComma(Armor equipment, string keywordStr, Keyword theKeyword)
  if equipment.HasKeyword(theKeyword)
    return keywordStr + ","
  EndIf
  return ""
EndFunction

string Function GetKeywordsForEquipments(Armor theArmor)
  if !theArmor
    Main.Warn("GetKeywordsForEquipments: No armor passed")
    return ""
  EndIf
  string ret = ""
  if bHasArousedKeywords
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_HalfNakedBikini", SLA_HalfNakedBikini)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_ArmorHalfNaked", SLA_ArmorHalfNaked)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_Brabikini", SLA_Brabikini)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_ThongT", SLA_ThongT)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_ThongLowLeg", SLA_ThongLowLeg)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_ThongCString", SLA_ThongCString)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_ThongGstring", SLA_ThongGstring)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_PantiesNormal", SLA_PantiesNormal)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_KillerHeels", SLA_KillerHeels)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_BootsHeels", SLA_BootsHeels)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_PantsNormal", SLA_PantsNormal)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_MicroHotPants", SLA_MicroHotPants)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_ArmorHarness", SLA_ArmorHarness)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_ArmorSpendex", SLA_ArmorSpendex)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_ArmorTransparent", SLA_ArmorTransparent)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_ArmorLewdLeotard", SLA_ArmorLewdLeotard)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_PelvicCurtain", SLA_PelvicCurtain)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_FullSkirt", SLA_FullSkirt)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_MiniSkirt", SLA_MiniSkirt)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_MicroSkirt", SLA_MicroSkirt)
    ret += GetEquipmentKeywordWithComma(theArmor, "EroticArmor", EroticArmor)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_PiercingVulva", SLA_PiercingVulva)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_PiercingBelly", SLA_PiercingBelly)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_PiercingNipple", SLA_PiercingNipple)
    ret += GetEquipmentKeywordWithComma(theArmor, "SLA_PiercingClit", SLA_PiercingClit)
  EndIf
  
  ; Add Devious Devices keywords
  if bHasDDNG && devious && devious.libs
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousPlugVaginal", devious.libs.zad_DeviousPlugVaginal)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousPlugAnal", devious.libs.zad_DeviousPlugAnal)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousBelt", devious.libs.zad_DeviousBelt)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousCollar", devious.libs.zad_DeviousCollar)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousPiercingsNipple", devious.libs.zad_DeviousPiercingsNipple)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousPiercingsVaginal", devious.libs.zad_DeviousPiercingsVaginal)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousArmCuffs", devious.libs.zad_DeviousArmCuffs)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousLegCuffs", devious.libs.zad_DeviousLegCuffs)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousBra", devious.libs.zad_DeviousBra)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousArmbinder", devious.libs.zad_DeviousArmbinder)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousYoke", devious.libs.zad_DeviousYoke)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousElbowTie", devious.libs.zad_DeviousElbowTie)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousPetSuit", devious.libs.zad_DeviousPetSuit)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousStraitJacket", devious.libs.zad_DeviousStraitJacket)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousCorset", devious.libs.zad_DeviousCorset)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousHood", devious.libs.zad_DeviousHood)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousHobbleSkirt", devious.libs.zad_DeviousHobbleSkirt)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousGloves", devious.libs.zad_DeviousGloves)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousSuit", devious.libs.zad_DeviousSuit)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousGag", devious.libs.zad_DeviousGag)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousGagPanel", devious.libs.zad_DeviousGagPanel)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousGagLarge", devious.libs.zad_DeviousGagLarge)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousHarness", devious.libs.zad_DeviousHarness)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousBlindfold", devious.libs.zad_DeviousBlindfold)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousAnkleShackles", devious.libs.zad_DeviousAnkleShackles)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousClamps", devious.libs.zad_DeviousClamps)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousBoots", devious.libs.zad_DeviousBoots)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousArmbinderElbow", devious.libs.zad_DeviousArmbinderElbow)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousHeavyBondage", devious.libs.zad_DeviousHeavyBondage)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousHobbleSkirtRelaxed", devious.libs.zad_DeviousHobbleSkirtRelaxed)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousCuffsFront", devious.libs.zad_DeviousCuffsFront)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousYokeBB", devious.libs.zad_DeviousYokeBB)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousBondageMittens", devious.libs.zad_DeviousBondageMittens)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_DeviousPonyGear", devious.libs.zad_DeviousPonyGear)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_PermitOral", devious.libs.zad_PermitOral)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_PermitAnal", devious.libs.zad_PermitAnal)
    ret += GetEquipmentKeywordWithComma(theArmor, "zad_PermitVaginal", devious.libs.zad_PermitVaginal)
  EndIf
  return ret
EndFunction

string Function GetKeywordsForActor(actor akTarget)
  string ret = ""

  if bHasTNG
    if akTarget.HasKeyword(TNG_Gentlewoman)
      ret += "TNG_Gentlewoman,"
    EndIf
    if akTarget.HasKeyword(TNG_XS)
      ret += "TNG_XS,"
    elseif akTarget.HasKeyword(TNG_S)
   	    ret += "TNG_S,"
    elseif akTarget.HasKeyword(TNG_M)
      ret += "TNG_M,"
    elseif akTarget.HasKeyword(TNG_L)
      ret += "TNG_L,"
    elseif akTarget.HasKeyword(TNG_XL)
      ret += "TNG_XL,"
    elseif akTarget.HasKeyword(TNG_DefaultSize)
      ret += "TNG_DefaultSize,"
    EndIf
  EndIf
  int actorSex = akTarget.GetActorBase().GetSex()
  if (actorSex == 0)
    ret += "ActorSexMale,"
  elseif (actorSex == 1)
    ret += "ActorSexFemale,"
  else
    ret += "ActorSexOther,"
  EndIf
  ret += akTarget.GetActorBase().GetRace() + ","
  return ret
EndFunction

string Function GetFactionsForActor(actor akTarget)
  string ret = ""

  return ret
EndFunction


bool Function IsTNGExposed(Actor akTarget)
	Armor armorItem = akTarget.GetWornForm(cuirassSlot) as Armor
	if armorItem != None
		if !armorItem.HasKeyword(TNG_Revealing) && !armorItem.HasKeywordString("TNG_Revealing")
			Main.Debug(main.GetActorName(akTarget) + " is wearing concealing armor")
			return False
		EndIf
	EndIf
	Main.Debug(main.GetActorName(akTarget) + " is exposed.")
	return True
EndFunction
