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

#speaker: Addison
Hey Grandma! What are you doing here?

#speaker: Grandma
Oh, hello my little A-Star! I’m just resting by my gravestone. 

Whenever someone visits my grave, I get transported over here.

I always enjoy these visits.

#speaker: Addison
So...whenever Mom and I visited you, you’d be there with us?

#speaker: Grandma
Yep! I was always there even though you couldn’t see me.

#speaker: Addison
<i>Huh...Mom used to tell me that ghosts would always be there whenever we’d visit, but I never believed her.</i>

<i>I always thought that it was a folk tale.</i>
 
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

#speaker: アディソン
「おばあちゃん！どうしてここにいるの？」

#speaker: おばあちゃん
「おや、A-Starだ！ちょっと墓碑の近くで休んでいる。」

「誰か私の墓を訪ねる時に、ここに運ばれた。」

「この訪問、嬉しい。」

#speaker: アディソン」
「それで。。。俺と母さんはおばあちゃんの墓を訪ねる時に、おばあちゃんが一緒だったか？」

#speaker: おばあちゃん
「そのとおりだ！私を見えなかったのに、ずっと一緒だった。」

#speaker: アディソン
そうか。。。母さんはよく、墓を訪ねるに行くとゴーストが出るって言いましたけど、信じなかった。

それは民話だけだと思っていた。

~ times_interacted = 1
~ gma_interactions = times_interacted
-> DONE

-> END

