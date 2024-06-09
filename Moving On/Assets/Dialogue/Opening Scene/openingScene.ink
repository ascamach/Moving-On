INCLUDE ../globals.ink

VAR currentLocale = ""
VAR ready = false

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
Who's there? #speaker: Addison

<i>I scratch my eyes in disbelief. Although I couldn't believe it, the one standing right in front of me is ...</i> #speaker: Addison

...Mom??? #speaker: Addison

What the — ? #speaker: Addison

Calm down, Addison — it's me! #speaker: Mom

<i>All I can do is stand there, stunned in shock. Is this real?</i>#speaker: Addison

No, that can't be right ...I must be imagining things, I'm still in a dream — yeah, that's it!

I'm still dreaming. I should pinch myself to wake up, isn't that how it works? #speaker: Addison

CALM DOWN! #speaker: Mom

... #speaker: Addison

... #speaker: Addison

... #speaker: Addison 

It's going to be alright, sweetie. #speaker: Mom

I've missed you so much ... #speaker: Addison

I've missed you too, Addison. #speaker: Mom

Once I died, I've always been by your side. But you weren't able to see me ... #speaker: Mom

...until now. #speaker: Mom

Why can I see you now Mom? #speaker: Addison

Why now? #speaker: Addison

I can explain what's going on.  #speaker: Mom

Another ghost had told me that I'm stuck in a limbo spirit world. #speaker: Mom

According to them, I can't move on until I collect enough <color=\#aefff1>“special” objects</color>.  #speaker: Mom

If I don't find them soon, I'll evaporate into dust and will disappear from the face of this world. #speaker: Mom

The only issue is ...I can't touch anything. I just go through everything. #speaker: Mom

Do you think you can help me, sweetie? #speaker: Mom

+ [I guess ...]
    I know things didn't end well for us, and I'm sorry for that. Let's go on one more journey together, yeah? #speaker: Mom
    ~ ready = false
    ~ is_ready = ready
    -> DONE

+ [Of course!]
    Thank you, sweetie. Let's go get ready. #speaker: Mom
    ~ ready = true
    ~ is_ready = ready
    -> DONE

=== main_fa ===
دوباره دارم خواب میبینم. #speaker: ادیسون

دوبار این حس لعنتی، افسوس اون لحظه. #speaker: ادیسون

... #speaker: ادیسون

هیچوقت فکر نمیکردم دنیام چقدر سری میتونه عوض شه. #speaker: ادیسون


با اینکه ۳ هفته گذشته، هنوز باور کردنش برام سخته. #speaker: ادیسون


... #speaker: ادیسون

لطفا نرو، تنهام نزار #speaker: ادیسون


ای کاش اون حرفارو بهت نمیزدم. #speaker: ادیسون


اگه فقط می دونستم که اون شب آخرین شبی هست که میدیدمت… #speaker: ادیسون


بغلت میکردم #speaker: ادیسون

منو ببخش مامان #speaker: ادیسون

ای کاش می‌شد همه چی برگرده #speaker: ادیسون

ای کاش می‌شد یکبار دیگه میدیدمش. #speaker: ادیسون


نمی‌دونم بدون تو چیکار کنم. #speaker: ادیسون

... #speaker: ادیسون

... #speaker: ادیسون

... #speaker: ادیسون

امروز با یه لرزی تو بدنم بیدار شدم. #speaker: ادیسون

حالم اصلا خوب نیست، می خوام بلند شم وای نمی‌تونم.
#speaker: ادیسون

بذار یه لیوان آب بخورم شاید حالم جا بیاد #speaker: ادیسون

به محض اینکه بلند شدم، احساس کردم یه نفر دیگه هم با من تو اتاقه! #speaker: ادیسون

-> DONE

=== main_ja ===

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

-> END