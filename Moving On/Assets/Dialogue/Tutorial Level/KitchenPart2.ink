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
{
- fridgeInteraction == false:
    -> log1
    -> DONE
- fridgeInteraction == true:
    -> log2
    -> DONE
}

=== log1 ===
Oh hey, there’s only a grilled cheese sandwich in there. Perfect. Why don't you have that? #speaker: Mom

//Flashback to a black screen that will have dialogue

...Are you ok?

I'm okay... It's just... I remembered something... Never mind. #speaker: Addison

You're as pale as the moonlight. Sit down, take a moment to breathe. Perhaps some music in the living room will soothe your spirit. #speaker: Mom

~ fridgeInteraction = true
-> DONE

=== log2 ===
#speaker: Addison
I'm already full...
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
#speaker: روح
بیا این ساندویچ رو بخور سرحال بیای.

خوبی عزیزم؟

#speaker: ادیسون
آره حالم خوبه، فقط یه چیزی یادم اومد…. ولش کن

#speaker: روح
مثل گچ رنگ پوستت سفید شده. بشین یکم سرحال بیای. پاشو یه آهنگ بذار دلت باز شه. 
~ fridgeInteraction = true
-> DONE

=== log2_fa ===
#speaker: ادیسون
من دیگه سیر شدم...
-> DONE