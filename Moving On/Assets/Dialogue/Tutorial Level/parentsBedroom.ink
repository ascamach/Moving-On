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

// Mom:
// روح
// Addison:
// ادیسون

=== main_en ===

#speaker: Addison
<i>It's been so long since I stepped in here.</i>

<i>It almost feels like normal.</i>

<i>It almost feels ...</i>

<i>Peaceful ...</i>

........ 

<i>It was a similar, gloomy day, back when I was younger.</i> // middle school era

<i>I was walking back from school, where I had gotten injured from something that happened. </i>

<i>An upperclassman hurt me ... I didn’t want to argue, but I needed to stand up for myself.</i>

<i>Mom was waiting at the door for me, my nose red and sniffling from the cold.</i> 

<i>Tears were still rolling down my face.</i> 

<i>Mom told me the school called her and for me not to worry. Everything was going to be okay.</i> 

<i>She then gave me a warm hug, and wrapped this specific jacket around me.</i>

<i>I’ll never forget her warmth and comfort.</i>

......

#speaker: Mom
Sweetie ... I know it’s been really rough — you’ve been going through a lot all by yourself, but ... listen to me.

I’m here. You’re going to be alright. 

#speaker: Addison
But you’re not! // *wobbly effect*

Nothing’s the same anymore. How can I keep going forward without you?


You've been there all my life. You left all of a sudden, and I don’t know what to do without you.

#speaker: Mom
I know, and I can’t express how much I wish I could physically be there for you. To give you all the hugs you want. 

It may not seem like it right now, but trust me. Everything will be okay. Everything will always turn out okay.

#speaker: Addison
But how can everything become okay if you’re not always there for me?

#speaker: Mom
Let’s take things one step at a time. Focus on the now. Don’t worry about the future yet.

Why don’t you put on my jacket? That’s a good start. Just think of it as you’re carrying a part of me everywhere. 

#speaker: Addison
...

#speaker: Mom
Addison, shall we head out now?

#speaker: Addison
Okay Mom, I’m ready. Let's stick together, okay?

{is_ready == "true":
#speaker: Addison
<i>I realized that ...</i>

<i>The moment I step out of the house, what’s going to happen?</i>
<i>Am I actually ready to face everything?</i>
-> DONE
}

-> DONE

=== main_fa ===
#speaker: Addison
من خیلی وقته این تو نیومدم.

بوی مامان رو میده.

خیلی…

بوش آرومم میکنه.

........ 

وقتی کوچکتر بودم تو یه روز دلگیر.

یادمه داشتم از مدرسه برمیگشتم که یه اتفاقی برام افتاد. 

یادمه یه کلاس پنجمی، میخواست اذیتم بکنه ولی من باهاش دعوام شد.

مامانم دمه در منتظره من بود، منم داشتم از سرما یخ میزدم.

گریه کنان می دویم و اسمشو داد میزدم.

بهم گفتش که از مدرسه بهش زنگ زدن و گفتن چی شده. خیلی حمایتم کرد.

بغل گرمش حسابی آرومم کرد اون روز. همین ژاکتش رو تنم کرد.

هیچ وقت حس گرم بغلش از یادم نمیره.

......

خوشگلم میدونم روزای سختی رو سپری کردی، ولی به من گوش کن، این روزام میگذره و تو دوباره قوی تر از 
همیشه به زندگیت ادامه میدی. الان که کنارتم. گریه نکن دیگه.

ولی نیستی!!!

هیچی دیگه مثل قبل نمیشه. چطوری بودن تو ادامه بدم؟

تو تو تک تک لحظه های زندگی من‌بودی. نمیشه همیطوری یه شبه منو تنها بذاری و بری. من بدون تو چیکار کنم 
اخه؟


تو نمیدونی من الان دنیا رو میدم که بتونم یک ثانیه بغلت کنم و کنارت باشم. 

ولی چیکار کنم این اتفاقی بود که نه دست تو بود و نه من. ولی میدونم که این روزها هم میگذره و همه چی بهتر 
میشه.

ولی چطوری وقتی تو توش نیستی. من اون آینده رو نمیخوام که تث توش نباشی.

آرووم باش گله من، یکی یکی همه چیز درست میشه. به فکر آینده نباش حالا.

چرا ژاکته منو نمی پوشی؟ انگار که یه تیکه از منو پوشیدی. ها!؟ 


{is_ready == "true":
#speaker: Addison
الان به خاطر ام اومد…

لحظه ای که پامو از این خونه بیرون بزارم، چه اتفاقی برام میفته؟ آیا به نظرت حاضرم با چالش های اون بیرون رو به رو شم؟ 

...

ادیسون آماده ای بریم؟

باشه مامان حاظر ام. لطفا این دفعه تنهام نزار.
-> DONE
}

-> DONE

=== main_ja === 

#speaker:「アディソン」
久しぶり。。。ここに足を踏み入れるの。

ほとんど普通の感じだ。。。

ほとんど。。。

平和的だ。。。

。。。

。。。

小学生の時も、同じような暗い日だった。

学校から歩いて帰る途中だった。あることが原因で怪我をしたんだった。

上級生に傷つけられた。喧嘩をしたくなかった。。。でも、自分自身のために立ち上がる必要があった。

俺の鼻が赤くなって、寒さで鼻が鳴っていた。母は家のドアで待っていてくれました。

涙が伝い落ちた。

母が暖かいハグをして、このジャケットを巻いてくれた。

俺は。。。絶対に母の温かさと心地よさを忘れない。

。。。。。

#speaker:「母」
「アディソン、大変だと分かっている。あなたは自分でたくさん経験しましたけど、私はここにいるよ。大丈夫だよ。」

#speaker:「アディソン」
「違う！」

「もう同じものは何もない。」

「どうやって母がいなければ続く？」

「いつも俺のために母がいた。突然消えた。何をするのもう分からない。。。」

#speaker:「母」
「そう。。。物理的にアディソンのそばにいられたらとおもうと、言葉ではい表せない。」

「あなたは今感じないけど、全部うまくなるよ。全ては必ずうまくなりますよ。」

#speaker:「アディソン」
「でも、母が俺のためにいないなら、どうやってうまくいくか？」

#speaker:「母」
「一歩ずつ前進しよう。今のことに集中して。未来は考えない。」

「さ、私のジャケットを着よう？いいスタートだ。私の一部をどこに持っていくのかを考えて。」

{is_ready == "true":
#speaker:「アディソン」
気づいた。。。

この家を出た瞬間に。。。どうなるかな？

本当に全て向き合う準備ができましたか？

。。。


#speaker:「母」
「さて、アディソン、出発しましょうか？」

#speaker:「アディソン」
「ええ、準備できました、母。一緒に行ってくれ。」

-> DONE
}
-> DONE

-> END