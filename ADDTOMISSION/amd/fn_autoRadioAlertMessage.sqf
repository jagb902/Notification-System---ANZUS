// autoRadioAlertMessage.sqf
// created by Joe Willis, 2020-MAR-09
//
// function to send administration messages to clients, leveraging CarRadio message dialog framework.
//
// receives parameters:
// 0) _alertMessage: the main text to be provided. The only mandatory parameter. If not supplied, function will exit.
// 1) _alertTitle: the title text to be provided. Default: "Admin Message". Provided text will be converted to upper case.
// 2) _alertDelay: amount of time the alert will stay displayed. Default time: 6 seconds.
// 3) _alertBGColor: color of the alert box. Default color is yellow. Submitted param must be of format [R, G, B, A]
// 4) _alertTextColor: color of the alert text. Default color is dark grey. Submitted param must be of format [R, G, B, A]

params ["_alertMsg", "_alertTitle", "_alertDelay", "_alertBGColor", "_alertTextColor"];
private _boxWidth = 0;

if ( isNil "_alertMsg" ) exitWith {};
if ( isNil "_alertTitle" ) then { _alertTitle = "Admin Message"; };
if ( isNil "_alertDelay" ) then { _alertDelay = 6; };
if ( isNil "_alertBGColor" || {!(_alertBGColor isEqualType [])}) then { _alertBGColor = [0.75, 0.75, 0.22, 1]; };
if ( isNil "_alertTextColor" || {!(_alertTextColor isEqualType [])} ) then { _alertTextColor = [0.19,0.19,0.19,1]; };

if ( count _alertMsg > 30 ) then { _boxWidth = ((count _alertMsg) - 30)/200; };

0 cutRsc ["AlertMessageDialog", "PLAIN", 0];

((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0100) ctrlSetPosition [0.031 * safezoneW + safezoneX, 0.882 * safezoneH + safezoneY, 0 * safezoneW, 0.065 * safezoneH]; // w = 0.248 * safezoneW;  h = 0.065 * safezoneH;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0100) ctrlSetBackgroundColor _alertBGColor;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0100) ctrlCommit 0;

//((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0200) ctrlSetPosition [0.031 * safezoneW + safezoneX, 0.893 * safezoneH + safezoneY, 0.018 * safezoneW, 0.035 * safezoneH]; // w = 0.036 * safezoneW;  h = 0.035 * safezoneH;
//((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0200) ctrlCommit 0;

((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0300) ctrlSetFade 1;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0300) ctrlSetPosition [0.075 * safezoneW + safezoneX, 0.893 * safezoneH + safezoneY, (0.248+_boxWidth) * safezoneW, 0.065 * safezoneH]; // w = 0.248 * safezoneW;  h = 0.065 * safezoneH;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0300) ctrlSetStructuredText parseText format ["<t shadow='0' font='PuristaBold'>%1<br/><t font='PuristaLight' size='0.8'>%2</t>", toUpper _alertTitle, _alertMsg]; // color='#191919'
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0300) ctrlCommit 0;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0300) ctrlSetTextColor _alertTextColor;
	
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0100) ctrlSetPosition [0.031 * safezoneW + safezoneX, 0.882 * safezoneH + safezoneY, (0.248+_boxWidth) * safezoneW, 0.065 * safezoneH]; // w = 0.248 * safezoneW;  h = 0.065 * safezoneH;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0100) ctrlCommit 0.25;

//((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0200) ctrlSetPosition [0.031 * safezoneW + safezoneX, 0.847 * safezoneH + safezoneY, 0.036 * safezoneW, 0.035 * safezoneH]; // w = 0.036 * safezoneW;  h = 0.035 * safezoneH;
//((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0200) ctrlSetPosition [0.031 * safezoneW + safezoneX, 0.893 * safezoneH + safezoneY, 0.018 * safezoneW, 0.035 * safezoneH]; // w = 0.036 * safezoneW;  h = 0.035 * safezoneH;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0200) ctrlSetFade 0;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0200) ctrlCommit 1;

((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0300) ctrlSetFade 0;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0300) ctrlCommit 1;
	
sleep _alertDelay;
	
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0200) ctrlSetFade 1;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0200) ctrlCommit 0.75;
	
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0300) ctrlSetFade 1;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0300) ctrlCommit 0.75;
	
sleep 0.75;
	
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0100) ctrlSetPosition [0.031 * safezoneW + safezoneX, 0.882 * safezoneH + safezoneY, 0 * safezoneW, 0.065 * safezoneH]; // w = 0.248 * safezoneW;  h = 0.065 * safezoneH;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0100) ctrlCommit 0.25;

((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0200) ctrlSetPosition [0.031 * safezoneW + safezoneX, 0.847 * safezoneH + safezoneY, 0 * safezoneW, 0.035 * safezoneH]; // w = 0.036 * safezoneW;  h = 0.035 * safezoneH;
((uiNamespace getVariable "AlertMessageDialog") displayCtrl 0200) ctrlCommit 0.25;
	
sleep 0.25;
	
cutText ["", "PLAIN"];