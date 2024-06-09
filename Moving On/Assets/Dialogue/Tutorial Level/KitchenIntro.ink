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
#speaker: Mom
Oh, didn’t the neighbors drop by the other day to give you some food? 

Why don’t you go check out <color=\#aefff1>the fridge</color>? I know you’ve been Doooor-dishing these past weeks.   


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

->END