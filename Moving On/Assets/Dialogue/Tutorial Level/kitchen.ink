INCLUDE ../globals.ink

VAR currentLocale = ""
VAR bedReady = false

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
{
- fridgeInteraction == false:
    -> log1
    -> DONE
- fridgeInteraction == true:
    -> log2
    -> DONE
}

=== log1 ===
Oh hey, there’s only a grilled cheese sandwich in there. #speaker: Mom

Perfect. Why don't you have that? #speaker: Mom

........................ #speaker: Addison

<i>Everyday after school, Mom would make me a grilled cheese sandwich.</i>

<i>Whenever I cried ...</i>

<i>...whenever I was mad ...</i>

<i>...whenever I was happy ...</i>

<i>...there was always a grilled cheese sandwich waiting for me.</i>

<i>I remember taking the first bite, and the flavors would melt on my tongue.</i>

<i>I'll never have mom's grilled cheese sandwich again, will I?</i>

......

...ison ... #speaker: Mom

Addison! 

Are you okay? 

You've just been staring at the sandwich. 

I'm okay ...It's just that I remembered something. #speaker: Addison

...I think I lost my appetite. 

It’s okay. #speaker: Mom

How about we just bring some snacks instead?

~ fridgeInteraction = true

{ fridgeInteraction and livingInteraction:
    #speaker: Addison
    ...I don’t think I can stay here anymore. Let's go. 

    #speaker: Mom
    But you're not dressed for the cold! You should wear something warmer. 

    I know you haven’t done your laundry these past few weeks; <color=\#aefff1>my room</color> has a clean jacket you can wear.

    #speaker: Addison
    Do I have to? I think I’ll be fine.

    #speaker: Mom
    We are not stepping out until you put on a proper jacket. Please, just grab it from <color=\#aefff1>my room</color>. 

    #speaker: Addison
    Alright, fine ...I'll go.
    -> DONE
}

-> DONE

=== log2 ===
#speaker: Addison
I’m not sure if I can look at grilled cheese sandwiches the same.
-> DONE

=== main_fa ===
{
- fridgeInteraction == false:
    -> log1_fa
    -> DONE
- fridgeInteraction == true:
    -> log2_fa
    -> DONE
}

=== log1_fa ===
.فقط یه ساندویچ نون و پنیر داریم#speaker: Mom

چرا اونو نمیخوری؟ #speaker: Mom

........................ #speaker: Addison

.هر روز برای تغذیه مدرسه، مامانم برام ساندویچ نون و پنیر درست می کرد

...هربار که گریه می کردم

...هربار که حالم خوب نبود

...هربار که خوشحال بودم

.همیشه یه نون و پنیر حاضر بود برای من

.هیچ وقت مزه اونایی که مامانم درست می کرد رو یادم‌ نمیره

دیگه فکر نکنم هیچ وقت نون پنیرای مامانمو بخورم! یعنی میشه فقط یبار دیگه؟

......

...ادیسون... #speaker: Mom

ادیسون!

حالت خوبه عزیزم؟

.چرا ماتت برده، زل زدی به غذات یه ساعته

.هیچی… یاده یه چیزی افتادم #speaker: Addison

...اصلا میل به غذا خوردن ندارم الان

.باشه #speaker: Mom

!جاش برای خودت یه چیزی بیار تو راه گشنت نشه
~ fridgeInteraction = true
-> DONE

=== log2_fa ===
#speaker: ادیسون
.نه امروز اصلا نمیتونم به نون و پنیر فکر کنم

-> DONE

=== main_ja ===
{
- fridgeInteraction == false:
    -> log1_ja
    -> DONE
- fridgeInteraction == true:
    -> log2_ja
    -> DONE
}

=== log1_ja ===
「おや、グリルドチーズサンドありますよ。」 #speaker: 「母」

「完璧だ。これを食べよう。」 #speaker: 「母」

........................ #speaker: 「アディソン」

毎日、学校が終わったら、母がグリルドチーズサンドを作ってくれた。

泣く時に。。。

怒る時に。。。

幸せな時に。。。

。。。いつも、グリルドチーズサンドが待ってくれました。

最初の一口を覚えている。。。味は舌の上で溶ける。

もう、二度と母のグリルドチーズサンド食べないか。。。

。。。。。

「。。。ィソン。。。」 #speaker: 「母」

「アディソン！」

「大丈夫ですか？」

「サンドをじろじろ見ていた。」

「いや。。。心配するな。なんか、何か思い出しただけです。」 #speaker: 「アディソン」

「。。。食欲をなくなった。」

「大丈夫だよ。」 #speaker: 「母」

「代わりにおやつを持っていくはどうだろう。」
~ fridgeInteraction = true
-> DONE

=== log2_ja ===
#speaker: 「アディソン」
「そう。。。グリルドチーズサンドを同じように考えるか出来ません。」
-> DONE

-> END