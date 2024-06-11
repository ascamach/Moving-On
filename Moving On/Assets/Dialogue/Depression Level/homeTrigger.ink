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
#speaker: Addison
<i>I hear a child crying from the nearby house.</i>

#speaker: Woman
It’s going to be okay, honey! You just scraped your knee a little.

Stay here while I get a bandage for you.

#speaker: Addison
<i>The cries start to die down.</i>

<i>This reminds me of the time I accidentally stepped on Sparky’s tail. He bit me, and I started crying.</i>

<i>I wasn’t bleeding, but Mom was there to make everything all better.</i>

<i>Now that I think about it ...Mom always helped me whenever I got hurt.</i> 

<i>I lost the one person who was there for me ...</i>
-> DONE

=== main_fa ===
صدای گریه یه بچه میاد از یه جای نزدیک.

خوب میشه مامان جان! فقط یه کوچولو زخم شده زانوت.

اینجا وایسا تا برم برات چسب زخم بگیرم.

صدای گریه بچه به آرامی کم شد.

یا اون روز افتادم که تصادفی پا روی دم اسپارکی گذاشتم. بیچاره دردش گرفت اونم منو گاز گرفت، منم چون بچه 
بودم گریم در اومد.

از پام خون نمیومد، ولی مامانم اونجا بود و مطمعن شد من حالم خوبه، همین که بود میدونستم تنها‌ نیستم خیلی 
حس امنی بهم میداد.

الان که فکر میکنم، مامانم تمیشه تو تک تکه لحظه های همه زندگیم بود و همیشه کمکم می کرد.

آخرین کسی که تو دنیا برام بود، دیگه پیشم نیست…
-> DONE

=== main_ja ===
#speaker:「アディソン」
なんか。。。子どもが泣いているのが聞こえる。あの家っから。。。

#speaker:「女の声」
「あなたは平気だよ！ただ膝を少し擦りむいただ。」

「ここにいって。包帯を巻く。」


#speaker:「アディソン」
泣いて声が静まり始める。

うっかりスパーキーの尻尾を踏んでしまった時を思い出した。スパーキーに噛まれて、俺は泣いてしまいました。

出血はなかったけど、母がそこにいて、全てをよくしてくれた。

そういえば、俺が怪我をすると母はいつも助けてくれました。

いつも俺のためにいる人をなくなった。。。

-> DONE

-> END


