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
}

=== main_fa ===

{
- gma_interactions == "":
    -> log1_fa
- gma_interactions == 1:
    -> log2_fa
- gma_interactions == 2:
    -> log3_fa
- gma_interactions >= 3:
    -> log4_fa
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
- gma_interactions == 2:
    -> log3_en
- gma_interactions >= 3:
    -> log4_en
}

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

=== log4_fa ===
#speaker: مادر بزرگ
خوشگلم برو به مامانت کمک کن. من همیشه کنارتم.

~ times_interacted = 4
~ gma_interactions = times_interacted
-> DONE

// English Dialogue
=== log1_en ===
Hey there sonny! Long time no see hehe. #speaker: Grandma

Grandma?! How can I see you? I just saw _____ [dog] in the hallway. What’s going on? #speaker: Addison

I don’t know sonny but I’ve been watching you from this ghost world for quite some time. #speaker: Grandma

Wait but how come you didn’t disappear? How come you don’t need help like my mom does? #speaker: Addison

Because I’m waiting for that stubborn grandpa of yours. I can only move on when he comes to the ghost world. #speaker: Grandma


~ times_interacted = 1
~ gma_interactions = times_interacted
-> DONE

=== log2_en ===
Addison, you’re too skinny. You need to eat more. #speaker: Grandma

Ok grandma. #speaker: Addison

Eat more fruits and vegetables too! You need to be healthy when you enter college. #speaker: Grandma

Ok grandma.. #speaker: Addison

~ times_interacted = 2
~ gma_interactions = times_interacted
-> DONE

=== log3_en ===
[Grandma] Back in my day, I used to go outside and play with my friends. You youngins just stay in and play video games all day.
 #speaker: Grandma

I play with my friends on the computer. #speaker: Addison

You should go outside and play more. #speaker: Grandma

~ times_interacted = 3
~ gma_interactions = times_interacted
-> DONE

=== log4_en ===
Sonny, go help out and listen to your mom. I’ll be watching you guys! #speaker: Grandma

-> DONE