INCLUDE ../globals.ink

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

// Addison:
// ادیسون
// アディソン

// Mom: 
// ママ

=== main_en ===
... #speaker: Addison

... #speaker: Addison

<i>I'm having that dream again.</i> #speaker: Addison

<i>A dream about the pain and regrets I felt during that moment.</i> #speaker: Addison

... #speaker: Addison

<i>I didn't realize how fast things would change.</i> #speaker: Addison

<i>Even though it's been three weeks, I'm still struggling to process everything.</i> #speaker: Addison

... #speaker: Addison

Please don't leave ... #speaker: Addison

I wish I hadn't said the things I said to you. #speaker: Addison

If only I had known that night was the last time I would ever talk to you ... #speaker: Addison

...to see and to hug you. #speaker: Addison

I'm sorry, Mom. #speaker: Addison

I wish I could apologize to you. #speaker: Addison

Mom, don't leave this world yet. #speaker: Addison

I don't know what I'll do without you. #speaker: Addison

... #speaker: Addison

... #speaker: Addison

... #speaker: Addison

<i>I wake up in a cold sweat.</i> #speaker: Addison

<i>Feeling dizzy, I try to sit up in bed.</i> #speaker: Addison

I should get a glass of water ... #speaker: Addison

<i>As soon as I get up, I notice a strange yet oddly familiar presence from the other side of the room.</i> #speaker: Addison

-> DONE

=== main_fa ===
... #speaker: ادیسون

... #speaker: ادیسون

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