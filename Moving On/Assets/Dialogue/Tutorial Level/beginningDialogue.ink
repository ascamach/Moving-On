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
You’ve been holed up in your room for the past couple of weeks. Why don’t we get up and prepare to head out? #speaker: Mom 

This feels so sudden; I’m not sure if I’m ready. #speaker: Addison

I know this must be a lot for you right now, but…I believe in you sweetie. You can do this! You’re a tough cookie! # speaker: Mom

…and there you go again with your cringe phrases. #speaker: Addison #portrait: player_sad

*sighs* Alright, I’m up. #speaker: Addison

But, am I actually ready for this?

Can I bring myself to go on this journey just to go through that all over again?


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