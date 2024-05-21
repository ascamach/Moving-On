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
Oh hey, there’s only a grilled cheese sandwich in there. #speaker: Mom

Perfect. Why don't you have that? #speaker: Mom

........................ #speaker: Addison

Everyday after school, Mom would make me a grilled cheese sandwich.

Whenever I cried…

…whenever I was mad…

…whenever I was happy…

…there was always a grilled cheese sandwich waiting for me.

I remember taking the first bite, and the flavors would melt on my tongue.

I'll never have mom's grilled cheese sandwich again, will I?
……………….

…ison… #speaker: Mom

Addison! 

Are you okay? 

You've just been staring at the sandwich. 

I'm okay…It's just that I remembered something. #speaker: Addison

…I think I lost my appetite. 

It’s okay. #speaker: Mom

How about we just bring some snacks instead?

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
~ fridgeInteraction = true
-> DONE

=== log2 ===
#speaker: Addison
I’m not sure if I can look at grilled cheese sandwiches the same.
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