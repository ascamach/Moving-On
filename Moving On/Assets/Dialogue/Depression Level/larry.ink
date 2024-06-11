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
سلام عمو جان، خیلی وقته ندیدمت جوون. ماشالله حسابی بزرگ شدی. الان دانشگاه باید باشی درسته؟

#speaker: ادیسون
هنوز نه، ولی کم کم. پارم دبیرستان رو تمموم میکنم.

#speaker: لری
خیلی زود میگزره ها!

مطمعنم مامانت اگه اینحا بود حصابی بهت افتخار میکرد عمو.
#speaker: ادیسون
...

...
#speaker: لری
ای وای، شرمنده اصلا تمیخواستم ناراحتت کنم عمو جان . من پیر شدم چرت و پرت میگم جدیدنا.
#speaker: ادیسون
نه اوکیه…
#speaker: لری
اگر هر موقع خواستی دربارش حرف بزنی بیا پیش عمو جونت.

~ times_interacted = 1
~ larry_interactions = times_interacted
-> DONE

=== log2_fa ===
#speaker: لری
زود برگشتی عمو جان؟
#speaker: ادیسون
دوباره سلام! کلید انباری رو پشت بوم پیشه شماست؟

بله عمو، لازم داریش؟
#speaker: لری
لری بعد از کلی گشت و گذار تو جیبش، بعد از یه ربع بلاخره…

آها

پیداش کردم هوم.

لری کلید رو بهم داد.
#speaker: لری
مرسی. زودی براتون میارمش.
#speaker: ادیسون
باشه عمو.
#speaker: لری
مواظب باش میری اون بالا. خیلی بهم ریختس، نیفتی.

اون سری خانم ولی پور تعریف میکرد اون بالا صدا های گریه یه دختر رو میشنیده.

ولی کسی نبوده، میگفت که روح دختر اون همسایه پایینیشون که از بالا پشت بوم افتاده. حواست رو جمع کن.

چشم، حواسم هست عوم.

~ times_interacted = 2
~ larry_interactions = times_interacted
-> DONE

=== log1_ja ===
#speaker:「ラリー」
「おい、しょうねん！おや、おや、お前の顔を見るのはいつかな？ずいぶん老けたみたい。もう大学生だろう？」

#speaker:「アディソン」
「いや、まだです。もうすぐ高校から卒業しますけど。」

#speaker:「ラリー」
「時間が過ぎるのはとても早いね。」

「お母さんはあんたの事をとても誇りに思っていると思うわ！」

#speaker:「アディソン」
「。。。」

#speaker:「ラリー」
「あ、しまった。。。ごめんなさいー今思い出した。このおじいさん、最悪のタイミングで物事を忘れます。

#speaker:「アディソン」
「。。。や、大丈夫ですよ。」

「あい、もし何も話したい事があれば、このおじいさんはここにいるよ。」

~ times_interacted = 1
~ larry_interactions = times_interacted
-> DONE

=== log2_ja ===
#speaker:「ラリー」
「おや、しょうねん。もう戻ってきた？」

#speaker:「アディソン」
「そう、ラリーさん！実は屋根の押入れの鍵が持っていると聞きたいのです。」

#speaker:「ラリー」
「ああ、持っている。要るか？」

#speaker:「アディソン」
ラリーはポケットを漁る。

魚の餌とか、釣り針とか、どの道具の音が聞こえます。

しばらくして。。。

#speaker:「ラリー」
「よし、どうぞ！」

#speaker:「アディソン」
ラリーが鍵をくれました。

「ありがとう！終わったら、すぐ返します！」

#speaker:「ラリー」
「心配ない、しょうねん！」

「でも気を付けて。屋上に行くに、ゾッとするだよ。」

「ゴーストがあそこにいるはずだろう。。。」

「時々、クッキー皿を置いて行くーなぜだろうーもしあのゴーストはペコペコになる。」

#speaker:「アディソン」
「ん、気を付けます」。

~ times_interacted = 2
~ larry_interactions = times_interacted
-> DONE
