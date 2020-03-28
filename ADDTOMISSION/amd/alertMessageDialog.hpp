// alertMessageDialog.hpp
// created by Joe Willis, 2020-MAR-09
//
// dialog which creates an alert message on client

class AlertMessageDialog {
    idd = 5152005;
    movingEnable = 0;
    enableSimulation = 1;
	fadein=0;
    duration = 99999999999;
    fadeout=0;
	onLoad = "uiNamespace setVariable ['AlertMessageDialog', _this select 0];";
	onUnload = "uiNamespace setVariable ['AlertMessageDialog', objNull];";
	onDestroy = "uiNamespace setVariable ['AlertMessageDialog', objNull];";

    class controls {
		class AMD_RscText {
			x = 0;
			y = 0;
			h = 0.037;
			w = 0.3;
			type = 0;
			style = 0;
			shadow = 1;
			colorShadow[] = {0, 0, 0, 0.5};
			font = "RobotoCondensed";
			SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			text = "";
			colorText[] = {1, 1, 1, 1.0};
			colorBackground[] = {0, 0, 0, 0};
			linespacing = 1;
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
		};
		
		class AMD_RscPicture {
			shadow = 0;
			type = 0;
			style = 48;
			sizeEx = 0.023;
			font = "RobotoCondensed";
			colorBackground[] = {};
			colorText[] = {0,0,0,1};
			x = 0;
			y = 0;
			w = 0.2;
			h = 0.15;
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
		};
		
		class AMD_RscStructuredText {
			type = 13;
			style = 0;
			x = 0;
			y = 0;
			h = 0.035;
			w = 0.1;
			text = "";
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			colorText[] = {1, 1, 1, 1.0};
			shadow = 1;

			class Attributes {
				font = "RobotoCondensed";
				color = "#ffffff";
				align = "left";
				shadow = 1;
			};
		};
		
		class BackgroundImage: AMD_RscText {
            idc = 0100;
			colorBackground[] = { 0.988, 0.816, 0.062, 1};
            text = "";
            x = 0.031 * safezoneW + safezoneX;
            y = 0.882 * safezoneH + safezoneY;
            w = 0 * safezoneW;
            h = 0.065 * safezoneH;
        };
		
		class TabIcon: AMD_RscPicture {
            idc = 0200;
            text = "amd\images\AttentionRoundIcon.paa";
			x = 0.035 * safezoneW + safezoneX;
            y = 0.873 * safezoneH + safezoneY;
            w = 0.036 * safezoneW; // 0.018
            h = 0.07 * safezoneH; // 0.035
        };
		
		class TabAlert: AMD_RscStructuredText {
            idc = 0300;
            text = "";
			x = 0.075 * safezoneW + safezoneX;
			//y = 0.75 * safezoneH + safezoneY;
			y = 0.873 * safezoneH + safezoneY;
            //w = 0.212 * safezoneW;
			w = 0.248 * safezoneW;
            h = 0.063 * safezoneH;
        };
	};
};
