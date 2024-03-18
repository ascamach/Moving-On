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
}

// Mom:
// روح
// Addison:
// ادیسون

=== main_en ===
(Player wakes up from dream)
(Player notices their mom in ghost form from across the room)


HuhHHHuHHHH? MoM????? #speaker: Addison

HOw aRe YoU HeRE? Wait, hoW cAn I SeE YoU?! Wait, aM I deAd? #speaker: Addison

Calm down Addison. #speaker: Mom

Wait, Is ThiS a DrEam?? #speaker: Addison

It’s not a dream sweetie.. #speaker: Mom

IS ThiS the EnD foR Me??? I cAn SeE GhOsts!!! #speaker: Addison

CALM DOWN! #speaker: Mom

… MOM #speaker: Addison

(Addison crying)
//STRETCH GOAL: Have the player get up and go to their mom to hug

I’m sorry for leaving you. I didn’t know my time was so short with you. #speaker: Mom

I know you’re hurting and I’ve been watching you for a while. I don’t like to see you in pain. But sweetie, I need your help.

(Addison is still crying but a little less now)

What (sniffle) do you need help (sniffle) with? #speaker: Addison

When I passed away, I instantly came back to the world as a ghost. No one could see me though except this hooded figure that kept following me. #speaker: Mom

They approached me and said I would be stuck in the land of living. 

The only way for me to move on from this land is to collect important possessions of mine. 

This will help me to be able to let go of my old self and accept that I passed on. 

If I’m unable to find all my possessions, I’ll evaporate into dust and will disappear from the face of this world. 

The only issue is I can’t touch anything. My hand just goes through everything. I need you to help me get my possessions. 

Can you help me sweetie? We can spend more time together!

If it’s to help you not be stuck in limbo and not disappear, I’ll help you. #speaker: Addison

I'll do anything for you mom. I love you.

-> DONE

=== main_fa ===
#speaker: ادیسون
هاااااا؟ مامان توییی؟ چه شکلی ممکنه؟ یعنی من مردم؟

#speaker: روح
آروم باش عزیزم

#speaker: ادیسون
یعنی دارم خواب میبینم؟

#speaker: روح
نه عزیزم اینا همش واقعییه

#speaker: ادیسون
یعنی این آخر خطه برای من؟ روز منم رسید؟ بالاخره روح دارم میبینم!!!

#speaker: روح
آروم باش یکم

#speaker: ادیسون
مامانننن

#speaker: روح
الان به کمک نیاز دارم و فقط تورو دارم که به دادم برسی.

من خیلی سخته برات ولی اینو بدون کن من از راه دور همیشه دارم نگاهت می کنم. دوست ندارم ناراحتیت رو ببینم. ولی

عزیزم من شرمنده ام که تنها موندی. نمیدونستم که سرنوشت من و تو خیلی زود قرار بود به ختم برسه. میدونم که بدونه

#speaker: ادیسون
چطوری من میتونم به تو کمک کنم مامان جونم

#speaker: روح
وقتی که دنیا برای من تموم شد، هممون لحظه دوباره تو همین دنیا ظاهر شدم ولی تو فرم یه روح. احساس می کردم

هیچکس منو نمیتونه ببینه، ولی یه شبح هست که همش دنبالم می کنه. چند وقت پیش اومد نزدیکم و بهم گفت که تا ابد تو

دنیا بی تکلیف قراره گیر بکنم. تنها راهی که میتونم از این شرایت خلاص شم اینه که یه سری از وسایل شخصیم رو باید

در اختیار تو بذارم. این کار به من اجازه میده که دیگه به چیزای غیر مهم تو این دنیا که بهشون وابسته نیستم رو در

اختیار دیگران بذارم ‌و راحت و آسوده از این دنیا برم. فقط دلم پیشه تو میمونه.  اگه نتونم اینکار رو به موقع انجام بدم

آروم آروم از این دنیا محو میشم و از یاد تو و دیگری ها میرم بدونه هیچ خاطره ای. مشکلم الان اینه که من به هیچ چیز

نمی‌تونم دست بزنم. به کمک تو لازم دارم تا وسایل ام رو پیدا کنیم. میشه لطفا کمکم کنی؟

#speaker: ادیسون
معلومه مه آره، من نمیذارم تو تو این بلاتکلیفی گیر کنی.

-> DONE