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
ببین کی راه گم کرده سر از اینجا در آورده.

برای اتفاق هایی که برات افتاده حسابی متاسفم. حال خودت بهتره؟

هی آره بهترم.

یذره هنوز برام باور کردنش سخته… نمیدونم چه شکلی توصیفش کنم.

نگران نباش عزیزم میفهمم منظورتو.

اینجا خداروشکر هر روز آدم زیاد میاد و مییره به خاطره همین من همه جور داستانها اینجا میشنوم.

مامان تو هم یکی از اون آدم‌های جالب بود که هیچ وقت دسا از تعریف کردن درباره تو بر نمیداشت.

واقعا؟

آره، همه میدونستن که تمام جون و دله این زن بسته به بچشش. 

الان اگر اینجا بود داشت برای من دریاره کالج تو حرف میزد.

آره فکر کنم…

اگر فقط میشد به روان بگم که الان اینجا پیشمونه (مامان).

راستی روان من میخواستم درباره این ازت بپرسم. جدیدنا چیزه عجیبی اینجا احساس نکردی؟

نه والله فکر‌نکنم، ولی چند وقته همه درباره روح روی پشت بوم پچ پچ میکنن.

چرا چیزی شده؟

به فقط کنجکاو بودم… مرسی.

پله ها بستس ولی فکر‌کنم از روی تراس همسایه بتونم برم بالا.


~ times_interacted = 1
~ rowan_interactions = times_interacted
-> DONE

=== log2_fa ===
دوباره سلام، شما درباره انباری پشته بوم چیزی میدونین؟

آره، اون انباری واسه شهرداریه ولی یه کلیدم ما داریم واسش.

چیزی میخوای از اونجا؟

آرو دنبال یکی از وسایل مامانمم.

مشکلی نیست فقط کلیدش دست من نیست.

اگر اشتباه نکنم لری داشتش آخرین بار.

باشه… مرسی.

~ times_interacted = 2
~ rowan_interactions = times_interacted
-> DONE

=== log1_ja ===
#speaker:「ローワン」
「おお、お前だな！よ、ボス！」

「最近のこと、本当に残念です。もう頑張ったか？」

#speaker:「アディソン」
「まあ。。。その。。。」
「大変でした。説明して大変です。」

#speaker:「ローワン」
「ご心配なく、分かるよ。」

「多いお客様はここに立ち寄るので、多い様々な物語を聞た。」

「お前のお母さんも例外ではなかったー彼女はお前の事を話しました。とーてもしゃべりましたよ。」

#speaker:「アディソン」
「本当かい？」

#speaker:「ローワン」
「もちろん！あのね、彼女はお前をとても気にかけした。」

「もし彼女はまだいたら、私にあなたが大学進学の事相談しますよ。」

#speaker:「アディソン」
「ん。。。そうね。。。」

もしローワンさんが母が俺の後ろにいると知ってさえいれば。。。

「ああ、ローワンさん。最近、何か変な事を見ましたか？」

#speaker:「ローワン」
「いいえ、そうとは言えない。。。でも、屋根に変な事が起こりました。」

「どうして、その聞くの？」

#speaker:「アディソン」
「ちょっと気になっただけです。ありがとう。」

「あの建物の側面にプラットホームが見える。あれで、屋根に行けるはずだ。」

~ times_interacted = 1
~ rowan_interactions = times_interacted
-> DONE

=== log2_ja ===
#speaker:「アディソン」
「ローワンさん！あの屋根の押入れ、何か知りまか？」

#speaker:「ローワン」
「ええ、あれは公共の物置だよ。」

「どうして？あれから何か要りますか？」

#speaker:「アディソン」
「なんか、ギンギラのものを見た。ちょっと調べてみたい。」

#speaker:「ローワン」
「そうですか？じゃあ、どうぞ。ですが、鍵を持っていない。」

「たぶん、ラリーが最後に使った人だともう。。。彼に聞てみて。」

#speaker: 「アディソン」
「わかりました。ありがとう！」

~ times_interacted = 2
~ rowan_interactions = times_interacted
-> DONE

