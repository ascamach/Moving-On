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

#fadein: musicflashback
#speaker: Addison
........

#speaker: Addison
<i>This was the song that Mom used to hum all the time.</i>

<i>Those were such happy times ...</i>

........
#fadeout: musicflashback

#speaker: Mom
Is everything alright?

#speaker: Addison
Sorry ...I just remembered something.

#speaker: Mom
It’s okay, baby. I know it’s been difficult; I wish I could give you a hug right now.

~ livingInteraction = true

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

=== main_fa ===
#fadein: musicflashback

........


.این اهنگ مورد علاقه مامانمه. همش زمزمه میکرد

...چه روز های خوبی بود

........
#fadeout: musicflashback

همه چی رو به راهه؟

...ببخشید تو فکر یه چیزی بودم

#speaker: Mom
.نگران نباش عزیزم، میدونم که این چند وقت روزای سختی رو پی کردی. ای کاش میشد الان بغلت می کردم

~ livingInteraction = true

{ fridgeInteraction and livingInteraction:
   #speaker: Addison
    در و دیوارای این خونه داره حالمو خراب میکنه. میشه بریم از اینجا؟ 

    #speaker: Mom
    .آره ولی یه لباس گرم بپوش‌ سرما نخوری

    .کلاغه خبر رسونده که لباساتو خیلی وقته نشستی؛ برو ژاکت منو از تو اتاقم بردار بپوش

    #speaker: Addison
    .حالشو ندارم مامان

    #speaker: Mom
    .یه چیزی بپوش تو این حال فقط کم مونده سرما بخوری. تا اتاقه من که راهی نیست


    #speaker: Addison
    .باشه… الان میرم
    -> DONE
}

-> DONE

=== main_ja ===
#fadein: musicflashback
#speaker: 「アディソン」
........

。。。

「この歌。。。母はよく口ずさみました。」

「その時には。。。とても嬉しかった。。。」

。。。

#speaker:「母」
「大丈夫ですか、アディソン？」

#speaker:「アディソン」
「ごめん。。。また思い出した。。。」

#speaker:「母」
「いいよ、アディソン。大変だったよ。本当にハグして上げたいんですけど。。。」

~ livingInteraction = true

{ fridgeInteraction and livingInteraction:
   #speaker:「アディソン」
「ここにいたくない。行こう。」

#speaker:「母」
「でも、外は寒いでしょう！何か暖かいものを着たほうがいいですよ。」

「過週、洗濯をしていないのは分かるよ。私の部屋にジャケットあります。」

#speaker:「アディソン」
「そうしんけらばならいのか？大丈夫だと思う。。。」

#speaker:「母」
「ちゃんとジャケットを着るまでに、出かけません。」

#speaker:「アディソン」
「分かった、分かった。。。」
    -> DONE
}

-> DONE

-> END
