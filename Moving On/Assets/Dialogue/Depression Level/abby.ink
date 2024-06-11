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
سلام.

…
…

با من حرف میزنی؟؟؟

آره… داستانش طولانیه…

اوه من عاشق داستانم. مامانم همیشه بران داستان های قشنگ‌ تعریف میکرد.

اگر وقت داشتم حتما برات تعریف‌میکردم ولی الان واسه یه کاره کوچولو عجله دارم. ولی الان اذت یه سواله مهم 
دارم.

تو یه چیزی که  همه روح ها دنبالشن این دورو برا ندیدی؟ 

نمیدونم اگه همه روح ها دنبالش باشن ولی یه چیزه براق تو انباری هست که ممکنه به کارت بیاد چون امرروز یهو 
ظاهر شد اینجا… منم نمیتونم بهش دست بزنم.

اوه واقعا…

شاید همون چیزی هست که من دنبالشم. مرسی که گفتی.

بهت قول میدم کارم که تموم شد بیام برات داستانم رو تعریف کنم.

قول!
~ times_interacted = 1
~ abby_interactions = times_interacted

-> DONE

=== log2_fa ===

میشه داستانت رو برام تعریف کنی.


الان نمیتونم متاسفانه… بعدا حتما برات تعریف میکنم.


قول دادیا!


~ times_interacted = 2
~ abby_interactions = times_interacted
-> DONE

=== log1_ja ===
#speaker:「アディソン」
「こんにちは。」

#speaker:「アビー」
「。。。」

「まって、アビーにあいさつしますか？！？」

#speaker:「アディソン」
「そうです。長い話しけど。」

#speaker:「アビー」
「イェイ！話しが大好き！いつもおかあさんがはなしをおしえてくれました！」

#speaker:「アディソン」
「もっと時間があれば、言ってみよう。でも今、質問があります。」

「何かとても、とても特別なものを見ましたか？」

#speaker:「アビー」
「フムフム。。。おお、あそこに艶やかなものがあるよ！今朝あらわれた！でも、アビーは何も触れてできない。。。」

#speaker:「アディソン」
「あ、本当に申し訳ない。」

もしかして、あの艶やかなものは特別なものかもしれない。行ってみよう。

「ありがとうね！俺のミッションが終わったら、話しを教えてあげる！」
#speaker: 「アビー」
「やくそくだよ！」

~ times_interacted = 1
~ abby_interactions = times_interacted
-> DONE 

=== log2_ja ===
#speaker:「アビー」
「はなし、教えてくれますか？」

#speaker:「アディソン」
「ごめん、まだ大切なミッションをしています。すぐに教えろう！」

#speaker:「アビー」
「やくそくわすれないで！」

~ times_interacted = 2
~ abby_interactions = times_interacted
-> DONE

