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

// Larry:
// لری
// Addison:
// ادیسون

=== main_en ===
{ 
- larry_interactions == "":
    -> log1_en
    -> DONE
    //Default Larry
- larry_interactions >= 1:
    -> log2_en
    -> DONE
}
-> DONE

=== main_fa ===
{ 
- larry_interactions == "":
    -> log1_fa
    -> DONE
    //Default Larry
- larry_interactions >= 1:
    -> log2_fa
    -> DONE
}
-> DONE

=== main_ja ===
{ 
- larry_interactions == "":
    -> log1_ja
    -> DONE
    //Default Larry
- larry_interactions >= 1:
    -> log2_ja
    -> DONE
}
-> DONE

=== log1_en ===
#speaker: Larry
Hey lad! My my, when was the last time I saw you? You’re looking quite older. Are you in college now?

#speaker: Addison
Not yet. I’ll be graduating from high school, though.

#speaker: Larry
Time really flies, doesn’t it? 

I’m sure your mom is very proud of you!

#speaker: Addison
...

#speaker: Larry
Oh my. I’m sorry — I just remembered. This old head can forget things at the worst times. 

#speaker: Addison
...It’s okay. 

#speaker: Larry
Ay, if you wanna talk about anything, you know where to find me!

~ times_interacted = 1
~ larry_interactions = times_interacted
-> DONE

=== log2_en ===
#speaker: Larry
Why aren’t there any fish today? I’ll starve if I can’t catch at least one!

~ times_interacted = 2
~ larry_interactions = times_interacted
-> DONE


=== log1_fa ===
#speaker: لری
سلام اَدیسون جان، چقدر بزرگ شدی جوون. دانشگاه میری؟

#speaker: ادیسون
نه هنوز دبیرستانم ولی کم کم تمومه اونم.

#speaker: لری
حیف که مادرت نیست اون روز رو ببینه. ولی بدون که اهالی این محل همیشه به تو افتخار میکنن.

من روزی که پسر خودم فارغ التحصیل شد رو یادمه. از خوشحالی گریه کردم.

برو عمو حوصله تو سر نمیبرم دیگه. در اینجا به روت بازه!

~ times_interacted = 1
~ larry_interactions = times_interacted
-> DONE

=== log2_fa ===
#speaker: لری
یادته کوچک تر که بودی باهم رفتیم ماهی گیری؟ چه روز های بود!

یادته به جای اینکه تو ماهی ها رو بگیری، ماهی ها تورو گرفتن وقتی پریدی تو آب! هاهاها

مامانتو بقیه محل شاکی بودن که چرا من کمکت نکردم.

#speaker: ادیسون
عمو من فقط پنج سالم بود.

#speaker:لری
خوبه دیگه، الان اگه شنا بلدی میدونه منی عمو جان.

~ times_interacted = 2
~ larry_interactions = times_interacted
-> DONE

=== log1_ja ===
また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。

~ times_interacted = 1
~ larry_interactions = times_interacted
-> DONE

=== log2_ja ===
また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。

~ times_interacted = 2
~ larry_interactions = times_interacted
-> DONE
