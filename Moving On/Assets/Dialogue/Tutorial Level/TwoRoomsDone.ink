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

#speaker: Addison
…I don’t think I can stay here anymore. Let's go. 

#speaker: Mom
But you're not dressed for the cold! You should wear something warmer. 

I know you haven’t done your laundry these past few weeks; my room has a clean jacket you can wear.

#speaker: Addison
Do I have to? I think I’ll be fine.

#speaker: Mom
We are not stepping out until you put on a proper jacket. Please, just grab it from <color=\#aefff1>my room</color>. 

#speaker: Addison
Alright, fine…I'll go.

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
