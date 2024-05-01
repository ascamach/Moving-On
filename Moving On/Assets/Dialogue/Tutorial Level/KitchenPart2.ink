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

........

"Everyday after school Mom would make me a grilled cheese sandwich" #speaker: Addison

"Whenever I cried" #speaker: Addison

"Whenever I was mad" #speaker: Addison

"Whenever I was happy" #speaker: Addison

"There was always a grilled cheese sandwich waiting for me" #speaker: Addison

"I can imagine taking that first bite and the flavors melting on my tongue" #speaker: Addison

"I'll never have mom's grilled cheese sandwich again will I" #speaker: Addison

Addison. Are you okay? #speaker: Mom 

You've been staring at the sandwich in silence. #speaker: Mom 

I'm okay. It's just I remembered something. #speaker: Addison

You know what I lost my appetite. #speaker: Addison

Why don't you sit down, take a moment to breathe. Perhaps some music in the living room will soothe your spirit. #speaker: Mom

~ fridgeInteraction = true
-> DONE

=== log2 ===
#speaker: Addison
I don't want to look at the grilled cheese sandwich again.
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