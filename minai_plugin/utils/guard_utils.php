<?php

// Function to check if crime actions should be enabled
function isGuardTargetingPlayer() {
    return (IsInFaction($GLOBALS["HERIKA_NAME"], "GuardFaction") || 
            IsInFaction($GLOBALS["HERIKA_NAME"], "Guard Faction")) && 
           GetTargetActor() == $GLOBALS["PLAYER_NAME"];
}