// transmitAlertMessage.sqf
// created by Joe Willis, 2020-MAR-09
//
// function used to remoteExec alert to clients.
//
// passes the following variables via remoteExec to specific client targets.
// The only mandatory variables are _targets and _alertMsg, if the others are not specified, they will be filled in by default by the autoRadioAlertMessage.sqf function.

params ["_targets", "_alertMsg", "_alertTitle", "_alertDelay", "_alertBGColor", "_alertTextColor"];

if ( isNil "_targets" ) exitWith { "No target clients provided." };
if ( isNil "_alertMsg" ) exitWith { "No message provided." };

// function method
["_targets", "_alertMsg", "_alertTitle", "_alertDelay", "_alertBGColor", "_alertTextColor"] remoteExec ["autoRadioAlertMessage", _targets];

// execVM method
//[["_targets", "_alertMsg", "_alertTitle", "_alertDelay", "_alertBGColor", "_alertTextColor"], "autoRadioAlertMessage.sqf"] remoteExec ["execVM", _targets];