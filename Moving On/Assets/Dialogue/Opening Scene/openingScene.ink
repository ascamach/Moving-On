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
~fadeImage(true, "test tag")
Who's there? #speaker: Addison

~fadeImage(false, "test tag")

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
#speaker: ادیسون
کی اونجاست؟

...چشامو چند بار باز و بسته کردم ولی هنوز باورم نمیشه. اونی که جلوم وایساده

...مامان؟

یعنی که چی؟ مگه میشه؟

#speaker:  مامان
!آروم باش ادیسون، منم

#speaker: ادیسون
از هیجان خشکم زده بود، باورم نمیشه که اینجا پیشمه! این واقعیه؟

.نه بابا دارم توهم میزنم… دوباره مثله اینکه فشارم افتاده… اینا همش یه خوابه

#speaker:  مامان
آروم باش عزیزم

.همه چی درست میشه عزیزم تو یکم آروم شو فقط

#speaker: ادیسون

.ماااامااااان… دلم برات یه ذره شده بود

#speaker:  مامان

.منم همینطور قشنگم


...از وقتی این اتفاق افتاده من از پیست تکون نخوردم، ولی تو منو نمیتونستی ببینی

...تا امروز

#speaker: ادیسون

الان چطوری میتونم ببینمت پس؟

چرا امروز؟

#speaker:  مامان
بیا برات توضیح بدم عزیزم

یه روحه دیگه ای بهم گفت که من تو این دنیا گیر کردم. مثله اینکه، من تا وقتی که همه چیزایی که لازم دارم رو 
.پیدا نکنم تو این دنیا گیرم

اگه تا چند وقت دیگه پیداشون نکنم، روح ام کلاً از همه جا پاک میشه و دیگه تو هیچ دنیایی نمی‌تونم زندگی کنم.

.تنها مشکلم اینه که نمیتونم هیچ چی رو لمس کنم

تو میتونی کمکم کنی خوشگلم؟

#speaker: ادیسون
+ [...اگه بتونم]
    #speaker:  مامان
    میدونم که آخرین باری که همو دیدیم خاطره خوبی برات نبوده و من متاسفم برای اون شب. بیا واسه آخرین بار 
    .هم که شده باهم این مشکل رو رفع کنیم 
    ~ ready = false
    ~ is_ready = ready
    -> DONE

+ [حتما‌ً]
    #speaker:  مامان
    !مرسی عزیزم، پاشو بریم 
    ~ ready = true
    ~ is_ready = ready
    -> DONE

-> DONE

=== main_ja ===

#speaker:「アディソン」
「誰か？」

目を描きます。信じられないけど、その私の前に立っている存在は。。。

「。。。母？」

「なんだ、これー！」

#speaker:「母」

「落ち着け、アディソン！」

#speaker:「アディソン」

ショックで、ただそこに立っていることしかできない。これは現実か？

「いやいや、そんな、。。。気のせいだろう、まだ夢見ているのだろうね。。。」

「そうよ！まだ夢見てる。目を覚めるために自分をつねらなけないだろう...。そういうものだろう？」

#speaker:「母」
「落ち着け！」

。。。

。。。

「大丈夫だよ、アディソン。」

#speaker:「アディソン」
「会いたかったよう。。。」

#speaker:「母」
「私も、アディソンに会いたかよ。。。」

「私が亡くなり、ずっと一緒でしたよ。でも、あんたは私を見えませんでした。。。」

「。。。今までけど。」

#speaker:「アディソン」

「どうして今、母に見えるの？」

「どうして。。。今。。。」

#speaker:「母」

「説明しよう。」

「他のゴーストから、私は今リンボー霊界から出せないと言われました。出せるのために、<color=\#aefff1>特別なも</color>のを集めます。」

「もうすぐ探しないと、この世界からきえます。」

「ですが、私は何も触りません。全て通り抜ける。」

「手伝ってくれませんか、アディソン？」

#speaker:「アディソン」

+ [まあ。。]
    #speaker: 母
    「うまくいかなかった、ごめん。もう一つ一緒に旅に行こうね？」 
    ~ ready = false
    ~ is_ready = ready
    -> DONE

+ [もちろん！]
    #speaker: 「母
    「ありがとう、アディソン。さあ、準備にしよう。」 」
    ~ ready = true
    ~ is_ready = ready
    -> DONE


-> END