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
}

// Mom:
// روح
// Addison:
// ادیسون

=== main_en ===
Addison, you’ve been staying in bed for so long. It’s time to get up now. #speaker: Mom 

I don’t want to. I just want to be a sad potato and stay here. #speaker: Addison

Come on now, the early bird gets the worm and we’re in a time crunch. I don’t want to fade away. # speaker: Mom

Fine. #speaker: Addison #portrait: player_sad

Why don’t you come with me to the kitchen? You need to eat a good hearty meal before we leave on this journey. #speaker: Mom

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