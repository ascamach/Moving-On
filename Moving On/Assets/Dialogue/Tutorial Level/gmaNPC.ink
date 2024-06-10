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
نوه عزیییزم چطوره؟ خوبی ننه جان؟ 

# speaker: ادیسون
مامانی؟ چطور ممکنه؟ اسپارکی هم اینجاس. چه خبر شده اینجا؟

#speaker: مادر بزرگ
والله نمی‌دونم عزیزم، من فقط اینو میدونم که از راه دور هر روز حواسم بهت هست.

#speaker: ادیسون
چه شکلی تو محو نمیشی؟ چطوری مثله مامان به کمک من نیاز نداری؟

#speaker: مادر بزرگ
به خاطره اینکه منتظر بابابزرگ یه دندَت ام. من موقعی خلاص میشم که اونم بیاد پیشم.

#speaker: ادیسون
اوه خیلی وقته به بابابزرگ سر نزدم. بیاد حتما یه سر بهش بزنم. 

~ times_interacted = 1
~ gma_interactions = times_interacted
-> DONE

=== log2_fa ===
#speaker: مادر بزرگ
عزیز دلم چقدر لاغر شدی. برو یه چیزی بخور.

#speaker: ادیسون
باشه مامانی.

#speaker: مادر بزرگ
میوه و سبزیجات یادت نره بخوری. باید یه ذره به خودت برسی مادر.

#speaker: ادیسون
چشم مامانی.

~ times_interacted = 2
~ gma_interactions = times_interacted
-> DONE

=== log3_fa ===
#speaker: مادر بزرگ
اون دوران که من جوون بودم، همش بیرون با دوستام بازی میکردم. شما جوون ها همش خونه پایه کامپیوترین.

#speaker: ادیسون
مامانی من با دوستام آنلاین کامپیوتر بازی می‌کنم.

#speaker: مادر بزرگ
باید بیشتر بری بیرون مادر.

~ times_interacted = 3
~ gma_interactions = times_interacted
-> DONE

=== log1_ja ===

。。。

。。。

また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。

。。。

行かないで。。。

君にあんな事を言わなければ。。。

あの夜が、君と話す最後の時間だと知っていたら。。。

。。。君を見る、君をハグする。

ごめん、母さん。

母さんに謝りたい。。。

母さん、この世を去らないで。。。

ママがいないなら、何をするのか分からない。。。

冷や汗をかいて、目が覚めた。

めまいがして、ベッドに座ろうとする。

「水、飲みたい。。。」#speaker: アディソン

起きたらすぐに、部屋の反対側から変だが、親しい存在に気づいた。

-> DONE

=== log2_ja ===
また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。

-> DONE

=== log3_ja ===
また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。

-> DONE

-> END

