Scheme
{
	Colors
	{
		"FogDefault"		"240 240 240 255"
		"FogShadow"			"18 18 18 255"
		"FogDamage"			"244 67 54 255"
		"FogDamageShadow"	"18 18 18 255"
	}

	Fonts
	{
		"FogCross"
		{
			"1"
			{
				"name"		"Crosshairs"
				"tall"		"28"
				"weight"	"0"
				"antialias"	"1"
			}
		}
		
		"FogCrossOutline"
		{
			"1"
			{
				"name"		"Crosshairs"
				"tall"		"28"
				"weight"	"0"
				"antialias"	"1"
				"outline"	"1"
			}
		}
		
		"FogCrossBlur"
		{
			"1"
			{
				"name"		"Crosshairs"
				"tall"		"28"
				"weight"	"0"
				"antialias"	"1"
				"blur"		"2"
			}
		}
	}
	
	CustomFontFiles
	{
		// Be sure the following number is past "8" and not the same as any other number on a custom font file!
		"220"
		{
			"font" "resource/crosshairs/fog/fog-cross.ttf"
			"name" "Crosshairs"
		}
	}
}