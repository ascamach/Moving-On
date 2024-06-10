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

{ abby_interactions == "":
    -> log1_en
    -> DONE
}

{ abby_interactions >= 1:
    -> log2_en
    -> DONE
}

-> DONE

=== main_fa ===

{ abby_interactions == "":
    -> log1_fa
    -> DONE
}

{ abby_interactions >= 1:
    -> log2_fa
    -> DONE
}

-> DONE

=== main_ja ===

{ abby_interactions == "":
    -> log1_ja
    -> DONE
}

{ abby_interactions >= 1:
    -> log2_ja
    -> DONE
}

-> DONE

=== log1_en ===
#speaker: Addison
Hello there.

#speaker: Abby
...

Wait, are you talking to me!?!?

#speaker: Addison
I am. It’s a long story.

#speaker: Abby
Oooh, I love stories! My mommy would tell me stories all the time.

#speaker: Addison
If I had more time, I’d tell you. But right now, I have a question.

Have you seen anything that looks super duper special?

#speaker: Abby
Hmm ...I saw something shiny over there! It just appeared this morning. But I can’t touch anything ...

#speaker: Addison
Aww, I’m really sorry about that. 

<i>Maybe that shiny thing is a special object. I should go take a look.</i>

Thank you! I promise to tell you a story when I finish my little mission.

#speaker: Abby 
Pinky promise!


~ times_interacted = 1
~ abby_interactions = times_interacted
-> DONE
=== log2_en ===

#speaker: Abby
Are you ready to tell your story yet?

#speaker: Addison
Sorry, I’m still on my special mission. I will soon!

#speaker: Abby
Don’t forget you pinky promised me!

~ times_interacted = 2
~ abby_interactions = times_interacted
-> DONE

=== log1_fa ===
اسپارکی؟؟ تو اینجا چیکار می‌کنی؟#speaker: ادیسون

هاپ هاپ #speaker: جرقه ای

باورم نمیشه دوباره میتونم میبینمت!#speaker: ادیسون

هاپ #speaker: جرقه ای

اوه، بذار برم آشپزخونه ببینم غذا چی داریم. شاید یه جایزه هم برای تو پیدا کنم! #speaker: ادیسون

~ times_interacted = 1
~ abby_interactions = times_interacted

-> DONE

=== log2_fa ===
اسپارکی ، نتونستم برات چیزی پیدا کنم. ولی اصلا چیزی میتونی بخوری؟  #speaker:ادیسون

هاپ هاپ #speaker: جرقه ای

ای کاش میتونستن حداقل نازت کنم. خیلی دلم برات تنگ شده. #speaker: ادیسون

~ times_interacted = 2
~ abby_interactions = times_interacted
-> DONE

=== log1_ja ===
また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。

~ times_interacted = 1
~ abby_interactions = times_interacted
-> DONE 

=== log2_ja ===

また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。

~ times_interacted = 2
~ abby_interactions = times_interacted
-> DONE

