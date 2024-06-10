INCLUDE ../globals.ink

VAR times_interacted = 0
VAR currentLocale = ""

~ currentLocale = localeID

VAR larryConditional = ""
VAR raineConditional = ""
VAR rowanConditional = ""

~ larryConditional = larry_interactions
~ raineConditional = raine_interactions
~ rowanConditional = rowan_interactions

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

// Rowan:
// روون
// Addison:
// ادیسون

=== main_en ===

{ rowanConditional == "":
    -> log1_en
    -> DONE
}

{ rowanConditional >= 1:
    ->log2_en
    ->DONE
}
-> DONE

=== main_fa === 

{ rowanConditional == "":
    -> log1_fa
    -> DONE
}

{ rowanConditional >= 1:
    ->log2_fa
    ->DONE
}
-> DONE

=== main_ja === 

{ rowanConditional == "":
    -> log1_ja
    -> DONE
}

{ rowanConditional >= 1:
    ->log2_ja
    ->DONE
}
-> DONE

=== log1_en ===
#speaker: Rowan
Look who it is. Hey, kiddo!

I’m really sorry to hear about what happened. Have you been hanging in there?

#speaker: Addison
Well, umm ...

It’s been hard ...I don’t really know how to explain.

#speaker: Rowan 
Don’t worry, I understand. 

A lot of customers stop by here, so I hear a lot of different stories.

Your mom was no exception — she would talk a lot about you. And I mean <i>a lot</i>.

#speaker: Addison
Really? 

#speaker: Rowan
Of course! You know, your mom really cared about you. 

If she was still around, she would be consulting me about how you would be moving far away for college. 

#speaker: Addison
Yeah ...I guess so.

<i>If only Rowan knew that my mom was right behind me.</i>

Oh Rowan, actually I was wondering. Have you seen anything out of the ordinary recently?

#speaker: Rowan
I can’t say that I have ...but there have been some strange things happening on <color=\#aefff1>the roof</color>. 

Why do you ask?

#speaker: Addison
Just wondering. Thank you.

<i>I see some platforms on the sides of the buildings. I can try getting to the rooftop with them.</i>


~ times_interacted = 1
~ rowan_interactions = times_interacted
-> DONE

=== log2_en ===
#speaker: Rowan
Feel free to stop by the café whenever you want. I’ll treat you to some homemade donuts. 

~ times_interacted = 2
~ rowan_interactions = times_interacted
-> DONE

=== log1_fa ===
#speaker: روون
اوه اَدیسون جان تویی!

حالت چطوره؟ کم پیدایی عمو جان؟

#speaker: ادیسون
هییی نمی‌دونم عمو جان. سعی می‌کنم خوب باشم. 

#speaker: روون
خودت بهتر میدونی که همه ما دلمون برای مادرت خیلی تنگ شده. مادرت یکی از مشتری های ثابت من بود.

#speaker: ادیسون
بله میدونم…

#speaker: روون
شرمنده عزیزم، حاله تورو هم خراب کردم. نباید یادت می آوردم. اینجا بیشتر بیا، پیراشکی همیشه مهمونه منی.

~ times_interacted = 1
~ rowan_interactions = times_interacted
-> DONE

=== log2_fa ===
#speaker: روون
بیشتر حواستو جمع کن عمو جان. دیدم داشتی از درو دیوار میرفتی بالا نگران شدم. مامانتم اگه اینجا بود همینو می گفت.

#speaker: ادیسون
اون بالا یه در هست که قفله. شما میدونین چطوری میشه بازش کرد؟

#speaker: روون
اونجا می‌خوای بری چیکار؟

#speaker: ادیسون
اونجا یه چیزی هست که لازم دارم.

#speaker: روون
والله یادم نیست.

#speaker: ادیسون
چطوری میتونم برم توش؟

#speaker: روون
اَدیسون جان فکر کنم بار آخر لَری کلید اونجا رو داشت.

برو ببین پیشه اونه؟

~ times_interacted = 2
~ rowan_interactions = times_interacted
-> DONE

=== log1_ja ===
また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。

~ times_interacted = 1
~ rowan_interactions = times_interacted
-> DONE

=== log2_ja ===
また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。

~ times_interacted = 2
~ rowan_interactions = times_interacted
-> DONE

