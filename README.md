Easy TF2 Crosshairs
=====
Easy to Install TF2 Font Crosshairs

Crosshairs
=====
| Crosshairs | Included? |
|:-------------:|:-------------:|
| Broesel's Crosshairs | Yes |
| Fog's Crosshairs | Yes |
| Knuckles' Crosshairs | Yes |
| ToonHUD Crosshairs | Yes |
| Whahay's Crosshairs | Yes |

Installation
====
## Step 1:
Download and Extract the .zip file. Inside, you'll find a **crosshairs** folder. Copy and paste this folder directly into the **resource folder** of your Custom HUD.

## Step 2:
Locate the following files: **resource/clientscheme.res**, **scripts/hudlayout.res** and **scripts/hudanimations_manifest.txt**.
You're most likely not going to have hudanimations_manifest.txt, so if you don't, I've included a copy of it in this download. You can find it in the scripts folder, and you can copy and paste it straight into your HUD.

Now, add the following at the very top of **resource/clientscheme.res**, before anything else.
```// Crosshairs
#base "crosshairs/broesel/crosshairscheme.res"
#base "crosshairs/fog/crosshairscheme.res"
#base "crosshairs/knuckles/crosshairscheme.res"
#base "crosshairs/toonhud/crosshairscheme.res"
#base "crosshairs/whahay/crosshairscheme.res"```

Next, add the following at very top of **scripts/hudlayout.res**, again, before anything else.
```// Broesel's Crosshairs
//#base "../resource/crosshairs/broesel/crosshair.res"
//#base "../resource/crosshairs/broesel/crosshair-blur.res"

// Fog's Crosshairs
//#base "../resource/crosshairs/fog/crosshair.res"
//#base "../resource/crosshairs/fog/crosshair-blur.res"

// Knuckles' Crosshairs
//#base "../resource/crosshairs/knuckles/crosshair.res"
//#base "../resource/crosshairs/knuckles/crosshair-blur.res"

// Toonhud Crosshairs
//#base "../resource/crosshairs/toonhud/crosshair.res"
//#base "../resource/crosshairs/toonhud/crosshair-blur.res"

// Whahay's Crosshairs
//#base "../resource/crosshairs/whahay/crosshair.res"
//#base "../resource/crosshairs/whahay/crosshair-blur.res"```

If you had your own **scripts/hudanimations_manifest.txt** file in your Custom HUD, add the following.
```"file"		"resource/crosshairs/crosshair_animations.txt"```
Specifically, you need to add this after the following line.
```"file"		"scripts/hudanimations.txt"```
You should end up with a file looking like this.
```hudanimations_manifest
{

	"file"		"scripts/hudanimations.txt"
	"file"		"resource/crosshairs/crosshair_animations.txt"
	"file"		"scripts/hudanimations_tf.txt"
}```

**Fantastic**, we're done setting up our files. If you've followed this guide correctly so far, everything should be set in place and ready to go. Next step:

## Step 3:
Go back into your **scripts/hudlayout.res** file again, and remove a comment tag (these // things) from one of the crosshairs of your choosing.
**crosshair.res** is a plain colored crosshair. It's what you'll need to make your crosshair appear on screen!
**crosshair-blur.res** is a blurred out crosshair. It is best used as a shadow behind the standard crosshair, so be sure to have crosshair.res uncommented alongside this one.
It's wise to only remove sections from one crosshair, unless you feel like mixing different crosshairs together. At this point, it's your call.

If you're in game at this point, do a hud_reloadscheme in console and see if the crosshair appears. If it does, brilliant, you're still on the right track. If not, get back to reading what I have previously written and follow it properly.

You may think "This crosshair isn't the one I want", "It's way too big", "I don't like the colors" or "It's not centered properly". No matter, you can easily change all that!

Go back to the **resource/crosshairs** folder and locate the crosshair you've uncommented for use. Open it up and you'll be greeted with a fairly easy to follow chunk of code in your text editor.
For the sake of example, let's look at **resource/crosshairs/fog/crosshair.res**
```"Resource/HudLayout.res"
{
	FogCrosshair
	{
		// Crosshair Value
		"labelText"		"0"
		
		// Crosshair Settings
		// Crosshair Name, Size:10-40, Outline:On/Off, Blur:On/Off.
		// Size can be between 10 and 40. Anything higher or lower will not work.
		// Removing any of the values from below will cause the crosshair to break.
		"font"			"Fog, Size:10, Outline:Off, Blur:Off"
		
		// Horizontal Position
		"xpos"			"c-100"
		
		// Vertical Position
		"ypos"			"c-100"
		
		// Width
		"wide"			"202"
		
		// Height
		"tall"			"198"
		
		
		
		
		
		
		
		
		
		// Don't touch me, I'm fragile!
		"controlName"	"CExLabel"
		"fieldName"		"FogCrosshair"
		"visible"		"1"
		"enabled"		"1"
		"zpos"			"2"
		"textAlignment"	"center"
		"fgcolor"		"FogDefault"
	}
}```
There are **6 key values** here that have been separated, and for good reason. These are what you'll be needed to pay attention to in order to change your Crosshair's Positioning, Size and what Crosshair you want to use (colors will be covered shortly).

**Crosshair Value** is what crosshair will be displayed on screen while you play. You can match the corresponding value to a crosshair using the **crosshair-preview.png** image file included in the folder. (Broesel's Crosshairs is currently without this file)

**Crosshair Settings** covers the which crosshair Font is being used, the crosshair cize, and if the crosshair has an outline or blur.
The only sizes that are supported are numbers between **10 and 40**, anything higher or lower than these values will break the crosshair.
Additionally, removing any of the values from below will also cause the crosshair to break.

**Horizontal Position, Vertical Position, Width and Height** are fairly straight forward. Unfortunately however, you'll need to fiddle around with the values a fair amount until the crosshair you wish to use centers correctly.

To change the color of the crosshair, you'll need to open the **crosshairscheme.res** file included within the same folder as the one your desired crosshair is found. This is probably the most daunting part, but no worries, it's just as easy as the rest.
Opening the file will display different values for a small variety of different things. However, we're only interested in changing the colors of the crosshair.
```"FogDefault"		"240 240 240 255"
		"FogShadow"			"18 18 18 255"
		"FogDamage"			"244 67 54 255"
		"FogDamageShadow"	"18 18 18 255"```
**FogDefault** is the standard color for the Crosshair. This affects the Standard Crosshair.
**FogShadow** is the standard color for the Blurred Crosshair.
**FogDamage** is the color that the Crosshair will change to when you have inflicted damage onto an enemy player. This affects the Standard Crosshair.
**FogDamageShadow** is the color that the Blurred Crosshair will change to when you have inflicted damage onto an enemy player.
All the other crosshairs included have very similarly named values that mirror the same results.
Again, a restart is required to see changes in this file. Use the <a href="https://color.adobe.com/create/color-wheel/" title="Adobe Color Wheel">Adobe Color Wheel</a> to find a good color for you, then copy the RGB code value and replace the ones set in this file and replace them with what you want to use.

## Step 4:
You should be completely set up to video games with your brand new crosshair. Congratulations. That was way easier than trying to figure out where a shit ton of code goes yourself.

I hope this is useful for you. If you have any suggestions, <a href="http://huds.tf/forum/private.php?action=send&uid=1" title="Message Me">send them my way over at huds.tf</a>.