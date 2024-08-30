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

// Grandma:
// مادر بزرگ
// Addison:
// ادیسون

=== main_en ===
#speaker: Sparky
Woof! 

#speaker: Addison
I sit on the patch of grass next to Sparky.

He tries to rest his head on my lap...

...but it phases through, and he starts whimpering.

It’s okay, Sparky. I’m here with you. 

~ times_interacted = 1
~ gma_interactions = times_interacted
-> DONE

=== main_fa ===

#speaker: مادر بزرگ
سلام نوه قشنگم! دلم برات یه ذره شده بود.

#speaker: ادیسون
مامانی؟

پس واقعانی میتونم روح ارو ببینم دیگه 

.مامانی خوبی؟ دلم‌ برات تنگ شده بود

#speaker: مادر بزرگ
والله هیچی! چشم به انتظار بابا بزرگت.

~ times_interacted = 1
~ gma_interactions = times_interacted
-> DONE

=== main_ja ===

#speaker: スパーキー
「ワン！」

#speaker: アディソン
スパーキーの隣に草で座ります。

スパーキーが俺の膝で頭を休めようとしたけど。。。

通り抜けた。スパーキーが泣きそう。

「大丈夫、スパーキー。ここにいるよ。」


~ times_interacted = 1
~ gma_interactions = times_interacted
-> DONE

-> END