INCLUDE ../globals.ink

VAR times_interacted = 0
VAR currentLocale = ""

~ currentLocale = localeID


{
- currentLocale == "en":
    -> main_en
    -> DONE
- currentLocale == "fa":
    -> main_fa
    -> DONE
- currentLocale == "ja":
    -> main_ja
    -> DONE
}

=== main_en ===
#speaker: Addison
<i>I hear a child crying from the nearby house.</i>

#speaker: Woman
It’s going to be okay, honey! You just scraped your knee a little.

Stay here while I get a bandage for you.

#speaker: Addison
<i>The cries start to die down.</i>

<i>This reminds me of the time I accidentally stepped on Sparky’s tail. He bit me, and I started crying.</i>

<i>I wasn’t bleeding, but Mom was there to make everything all better.</i>

<i>Now that I think about it ...Mom always helped me whenever I got hurt.</i> 

<i>I lost the one person who was there for me ...</i>
-> DONE

=== main_fa ===
اسپارکی؟؟ تو اینجا چیکار می‌کنی؟#speaker: ادیسون

هاپ هاپ #speaker: جرقه ای

باورم نمیشه دوباره میتونم میبینمت!#speaker: ادیسون

هاپ #speaker: جرقه ای

اوه، بذار برم آشپزخونه ببینم غذا چی داریم. شاید یه جایزه هم برای تو پیدا کنم! #speaker: ادیسون

-> DONE

=== main_ja ===
また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。

-> DONE



