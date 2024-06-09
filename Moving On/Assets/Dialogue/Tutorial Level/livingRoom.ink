INCLUDE ../globals.ink

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

// Mom:
// روح
// Addison:
// ادیسون

=== main_en ===

#fadein: musicflashback
#speaker: Addison
........

#speaker: Addison
<i>This was the song that Mom used to hum all the time.</i>

<i>Those were such happy times ...</i>

........
#fadeout: musicflashback

#speaker: Mom
Is everything alright?

#speaker: Addison
Sorry ...I just remembered something.

#speaker: Mom
It’s okay, baby. I know it’s been difficult; I wish I could give you a hug right now.

~ livingInteraction = true

{ fridgeInteraction and livingInteraction:
   #speaker: Addison
    ...I don’t think I can stay here anymore. Let's go. 

    #speaker: Mom
    But you're not dressed for the cold! You should wear something warmer. 

    I know you haven’t done your laundry these past few weeks; <color=\#aefff1>my room</color> has a clean jacket you can wear.

    #speaker: Addison
    Do I have to? I think I’ll be fine.

    #speaker: Mom
    We are not stepping out until you put on a proper jacket. Please, just grab it from <color=\#aefff1>my room</color>. 

    #speaker: Addison
    Alright, fine ...I'll go.
    -> DONE
}

-> DONE

=== main_fa ===
#speaker: ادیسون
من دیگه نمی‌تونم اینجا بمونم. میشه بریم؟

#speaker: روح
باشه، ولی اول لباس گرم بپوش سردت نشه. برو ژاکت منو از اتاقم بردار که گرم بمونی.

#speaker: ادیسون
حتما لازمه؟ فکر نکنم سردم بشه!

#speaker: روح
نه تا یه چیزی تنت نکنی از این خونه بیرون نمیریم. برو اون ژاکتمو که دوست داری از اتاقم برادر بپوش

#speaker: ادیسون
باشه باشه 

-> DONE

=== main_ja ===
また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。

-> DONE

-> END
