Easy TF2 Crosshairs
=====
Easy to Install TF2 Font Crosshairs

Crosshairs
=====
| Crosshairs | Included? |
|:-------------:|:-------------:|
| Fog's Crosshairs | Yes |
| Knuckles' Crosshairs | Yes |
| broeselhud Crosshairs | Not Yet |
| yahud Crosshairs | Not Yet |

Installation
====
## Step 1:
Download and Extract the .zip file. Inside, you'll find a **crosshairs** folder. Copy and paste this folder directly into your Custom HUD, in the same folder where **resource** and **scripts** are found. **DO NOT PUT THE CROSSHAIRS FOLDER INTO YOUR RESOURCE OR SCRIPTS FOLDERS.**

## Step 2:
Locate the following files: **resource/clientscheme.res**, **scripts/hudlayout.res** and **scripts/hudanimations_manifest.txt**.
You're most likely not going to have hudanimations_manifest.txt, so if you don't, I've included a copy of it in this download. You can find it in the scripts folder, and you can copy and paste it straight into your HUD.

Now, add the following at the very top of **resource/clientscheme.res**, before anything else.

```
// Crosshairs
#base "crosshairs/fog/crosshairscheme.res"
#base "crosshairs/knuckles/crosshairscheme.res"
```

Next, add the following at very top of **scripts/hudlayout.res**, again, before anything else.
```
// Fog's Crosshairs
//#base "../resource/crosshairs/fog/crosshair.res"
//#base "../resource/crosshairs/fog/crosshair-blur.res"
//#base "../resource/crosshairs/fog/crosshair-outline.res"

// Knuckles' Crosshairs
//#base "../resource/crosshairs/knuckles/crosshair.res"
//#base "../resource/crosshairs/knuckles/crosshair-blur.res"
//#base "../resource/crosshairs/knuckles/crosshair-outline.res"
```

If you had your own **scripts/hudanimations_manifest.txt** file in your Custom HUD, add the following.
```
"file"		"resource/crosshairs/crosshair_animations.txt"
```
Specifically, you need to add this after the following line.
```
"file"		"scripts/hudanimations.txt"
```
You should end up with a file looking like this.
```
hudanimations_manifest
{

	"file"		"scripts/hudanimations.txt"
	"file"		"resource/crosshairs/crosshair_animations.txt"
	"file"		"scripts/hudanimations_tf.txt"
}
```

**Fantastic**, we're done setting up our files. If you've followed this guide correctly so far, everything should be set in place and ready to go. Next step:

## Step 3:
Go back into your **scripts/hudlayout.res** file again, and remove a comment tag (these // things) from one of the files of your choosing.

**crosshair.res** is a plain colored crosshair. Nothing special.

**crosshair-blur.res** is a blurred out crosshair. It is best used as a shadow behind the standard crosshair.

**crosshair-outline.res** is a crosshair with a black outline around it by default.

It's wise to only remove a section from either crosshair, unless you feel like mixing Fog's and Knuckles' crosshairs together. At this point, it's your call.

If you're in game at this point, do a hud_reloadscheme in console and see if the Crosshair appears. If it does, brilliant, you're still on the right track. If not, get back to reading what I have previously written and follow it properly.

You may think "This crosshair isn't the one I want", "It's way too big", "I don't like the colors" or "It's not centered properly". No matter, you can easily change all that!

Go back to the **crosshairs** folder and locate the file you've uncommented for use. Open it up and you'll be greeted with a fairly easy to follow chunk of code in your text editor.
For the sake of example, let's look at **crosshairs/fog/crosshair.res**
```
"Resource/HudLayout.res"
{
	FogCrosshair
	{
		// Horizontal Position
		"xpos"			"c-100"
		
		// Vertical Position
		"ypos"			"c-100"
		
		// Width
		"wide"			"202"
		
		// Height
		"tall"			"198"
		
		// Crosshair Value
		"labelText"		"0"
		
		// Leave the rest alone
		"controlName"	"CExLabel"
		"fieldName"		"FogCrosshair"
		"visible"		"1"
		"enabled"		"1"
		"zpos"			"2"
		"font"			"FogCross"
		"textAlignment"	"center"
		"fgcolor"		"FogDefault"
	}
}
```

There are **5 key values** here that have been separated, and for good reason. These are what you'll be needed to pay attention to in order to change your Crosshair's Positioning and what Crosshair you want to use (size and colors will be covered shortly).

**Crosshair Value** is what Crosshair will be displayed on screen while you play. You can match the corresponding value to a crosshair using the **crosshair-preview.png** image file included in the folder.

**Horizontal Position, Vertical Position, Width and Height** are fairly straight forward. Unfortunately however, you'll need to fiddle around with the values a fair amount until the crosshair you wish to use centers correctly.

To change the size and color of the Crosshair, you'll need to open the **crosshairscheme.res** file included within the same folder as the one your desired Crosshair is found. This is probably the most daunting part, but no worries, it's just as easy as the rest.
Opening the file will display different values for a small variety of different things. Let's look at font sizes first, and use the default Fog Crosshair as an example:

```
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
```

The only thing we're interested in here is the **tall** value. Change the numberical value to anything else of your choosing.

The same can be done with **"FogCrossOutline"** and **"FogCrossBlur"**, as well as the similarly named values in the Knuckles' Crosshair folder.
Unfortunately, a restart is required to see changes in this file. A good size for most Crosshairs is usually between 24 and 28.

While we're in this file, we can also change the colors of the crosshair.
```
		"FogDefault"		"240 240 240 255"
		"FogShadow"			"18 18 18 255"
		"FogDamage"			"244 67 54 255"
		"FogDamageShadow"	"18 18 18 255"
```
**FogDefault** is the standard color for the Crosshair. This affects the Standard Crosshair and the Outline Crosshair.

**FogShadow** is the standard color for the Blurred Crosshair.

**FogDamage** is the color that the Crosshair will change to when you have inflicted damage onto an enemy player. This affects the Standard Crosshair and the Outline Crosshair.

**FogDamageShadow** is the color that the Blurred Crosshair will change to when you have inflicted damage onto an enemy player.
Knuckles' Crosshairs have very similarly named values that mirror the same results.

Again, a restart is required to see changes in this file. Use the <a href="https://color.adobe.com/create/color-wheel/" title="Adobe Color Wheel">Adobe Color Wheel</a> to find a good color for you, then copy the RGB code value and replace the ones set in this file and replace them with what you want to use.

## Step 4:
You should be completely set up to video games with your brand new Crosshair. Congratulations. That was way easier than trying to figure out where a shit ton of code goes yourself.

I hope this is useful for you. If you have any suggestions, <a href="http://huds.tf/forum/private.php?action=send&uid=1" title="Message Me">send them my way over at huds.tf</a>.
