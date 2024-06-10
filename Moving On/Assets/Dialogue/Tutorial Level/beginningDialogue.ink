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

// Mom:
// روح
// Addison:
// ادیسون

=== main_en ===
You’ve been holed up in your room for the past couple of weeks. Why don’t we get up and prepare to head out? #speaker: Mom 

{ is_ready == "true":
    Sure thing, but give me a bit to get ready. #speaker: Addison
    -> DONE
}

{ is_ready == "false":
    This feels so sudden; I’m not sure if I’m ready. #speaker: Addison

    I know this must be a lot for you right now, but ...I believe in you sweetie. You can do this! You’re a tough cookie! #speaker: Mom

    ...and there you go again with your cringe phrases. #speaker: Addison

    /*sighs*/ Alright, I’m up. #speaker: Addison

    <i>But, am I actually ready for this?</i> #speaker: Addison

    <i>Can I bring myself to go on this journey just to go through that all over again?</i> #speaker: Addison
    -> DONE
}

-> DONE


=== main_fa ===
#speaker: روح
روح: کله روز تو تختت بودی. وقتشه پاشی.

#speaker: ادیسون
بازیکن: واقعا حسشو ندارم. ترجیح میدم کله روز تو تختم بپوسم.

#speaker: روح
پاشو دیگه… سحر خیز باش تا کامروا شوی. وقت کمه پاشو بریم.

#speaker: ادیسون
باشه، الان پا میشم.

#speaker: روح
پاشو باهم بریم آشپزخونه قبل از این که بریم بیرون یه چیز بخوری.

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