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
//Flashback to a black screen that will have dialogue
Oh, sweetheart, if only I could cry with you. But this ghost form won’t let me. I wish I could give you a big hug. #speaker: Mom

I wAnT a HuG. I MIsS YoUUUUUUUU #speaker: Addison

It will be ok. I will always be by your side, don’t forget that. Since you can still see me, that’s good right! Even though I look different, my love for you remains unchanged. #speaker: Mom

It's not the same. I miss your warmth, your smell.. #speaker: Addison

Wearing my jacket, you'll carry a part of me everywhere. That's comforting, isn't it? #speaker: Mom
 
… I guess sooooo. #speaker: Addison

Shall we head out now? #speaker: Mom

Ok Mom, I’m ready. Let's stick together, okay? #speaker: Addison

-> DONE

=== main_fa ===
#speaker: روح
قشنگم گریه نکن دیگه. من اگه میتونستم الان

یه دله سیر بغلت میکردم. ولی تو این حالت چیزی از دستم بر نمیاد.

#speaker: ادیسون
دلم واسه بغلت تنگ شده. واسه خودت. واسه بوت.

#speaker: روح
منم عزیز دلم. ولی اینو بدون که من همیشه کنارتم و نمیزارم تنه

ا بمونی. بهت قول میدم. ممکنه یکم عوض شده باشم ولی تو یکی و یدونه منی.

#speaker: ادیسون
نه. من دلم برای گرمای وجودت تنگ شده. برای مامانم…

#speaker: روح
آره ولی…

#speaker: روح
ولی نداره. پاشو بریم بیرون.

#speaker: ادیسون
باشه مامان. من حاضر ام. ولی تنهام نذاریا، قول؟

->DONE