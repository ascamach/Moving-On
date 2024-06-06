INCLUDE ../globals.ink

VAR times_interacted = 0
VAR currentLocale = ""

~ currentLocale = localeID


{
- currentLocale == "en":
    -> main_en
    -> DONE
}

=== main_en ===
#speaker: Addison
<i>I hear a child crying from the nearby house.</i>

#speaker: Woman's Voice
It’s going to be okay, honey! You just scraped your knee a little.

Stay here while I get a bandage for you.

#speaker: Addison
<i>The cries start to die down.</i>

<i>This reminds me of the time I accidentally stepped on Sparky’s tail. He bit me, and I started crying.</i>

<i>I wasn’t bleeding, but Mom was there to make everything all better.</i>

<i>Now that I think about it ...Mom always helped me whenever I got hurt.</i> 

<i>I lost the one person who was there for me ...</i>
-> DONE


