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

{ 
- gma_interactions == "":
    -> log1_en
- gma_interactions == 1:
    -> log2_en
- gma_interactions >= 2:
    -> log3_en
}

=== main_fa ===

{ 
- gma_interactions == "":
    -> log1_fa
- gma_interactions == 1:
    -> log2_fa
- gma_interactions >= 2:
    -> log3_fa
}

=== main_ja ===

{ 
- gma_interactions == "":
    -> log1_ja
- gma_interactions == 1:
    -> log2_ja
- gma_interactions >= 2:
    -> log3_ja
}

// English Dialogue
=== log1_en ===
#speaker: Grandma
Hey there, A-Star! Long time no see! \*snickers\*

#speaker: Addison
Grandma?? 

<i>Dang, I really can see ghosts now, huh ...</i>

How have you been? I’ve missed you so much.

#speaker: Grandma
Oh, you know! Just relaxing, waiting for your grandpa. 


~ times_interacted = 1
~ gma_interactions = times_interacted
-> DONE

=== log2_en ===
#speaker: Grandma
You need to take care of yourself, A-Star! Drink water, go for a walk.

#speaker: Addison
I will, Grandma, I will ...

~ times_interacted = 2
~ gma_interactions = times_interacted
-> DONE

=== log3_en ===
#speaker: Grandma
A-Star, can you believe it? In this form, I don’t have to worry about my arthritis!

#speaker: Addison
I’m really happy for you, Grandma! Hahaha ...

<i>I don’t know if I should feel happy or ...sad? It’s a peculiar situation.</i>

~ times_interacted = 3
~ gma_interactions = times_interacted
-> DONE


// Farsi Dialogue
=== log1_fa ===
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

=== log2_fa ===
#speaker: مادر بزرگ
!ببینم به خودت میرسی گلم؟ لاغر شدی

#speaker: ادیسون
.به خدا آره، سعیمو میکنم
~ times_interacted = 2
~ gma_interactions = times_interacted
-> DONE

=== log3_fa ===
#speaker: مادر بزرگ
باورت میشه از وقتی روح شدم دیگه آرتروز کمرم رو حس نمیکنم؟

#speaker: ادیسون
خوشحالم که دیگه درد نمیکشی مامانی 

ولی نمیدونم خوشحال باشم یا ناراحت؟ خیلی دلم براتون تنگ شده بود؟

~ times_interacted = 3
~ gma_interactions = times_interacted
-> DONE

=== log1_ja ===

#speaker: 「おばあちゃん」
「おや、A-Starじゃないの！久しぶり！へへへ。。。」

#speaker: 「アディソン」
「ばあちゃん？」

「いや。。。本当にゴースト見えるかな。。。」

「お元気ですか？会いたかったよ。」

#speaker:「おばあちゃん」
「ま、ま、リラックスしていって、おじいちゃんを待っている。」


~ times_interacted = 1
~ gma_interactions = times_interacted
-> DONE

=== log2_ja ===
#speaker: 「おばあちゃん」
「お大事にしないと、A-Star! 水を飲んで、散歩しよう！」

#speaker:「アディソン」
「はいはい、ばあちゃん。。。」

~ times_interacted = 2
~ gma_interactions = times_interacted
-> DONE

=== log3_ja ===
#speaker: 「おばあちゃん」
「A-Star、信じられないよ！この形で、関節炎を心配しないよ！」

#speaker: 「アディソン」
「そうですか？よかったね、ばあちゃん！ハハハ。。。」

「喜ぶべきか、悲しむべきか？分からない。。。」

~ times_interacted = 3
~ gma_interactions = times_interacted
-> DONE


-> END

