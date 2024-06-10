INCLUDE ../globals.ink

VAR currentLocale = ""
VAR bedReady = false

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

<i>Everyday after school, Mom would make me a grilled cheese sandwich.</i>

<i>Whenever I cried ...</i>

<i>...whenever I was mad ...</i>

<i>...whenever I was happy ...</i>

<i>...there was always a grilled cheese sandwich waiting for me.</i>

<i>I remember taking the first bite, and the flavors would melt on my tongue.</i>

<i>I'll never have mom's grilled cheese sandwich again, will I?</i>

......

...ison ... #speaker: Mom

Addison! 

Are you okay? 

You've just been staring at the sandwich. 

I'm okay ...It's just that I remembered something. #speaker: Addison

...I think I lost my appetite. 

It’s okay. #speaker: Mom

How about we just bring some snacks instead?

~ fridgeInteraction = true

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

=== main_ja ===
{
- fridgeInteraction == false:
    -> log1_ja
    -> DONE
- fridgeInteraction == true:
    -> log2_ja
    -> DONE
}

=== log1_ja ===
また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。 
~ fridgeInteraction = true
-> DONE

=== log2_ja ===
また、あの夢を見ている。

あの瞬間に苦しい事と、後悔の事を感じた夢だ。。。

。。。

こんなに早く状況が変わるとは思わなかった。

もう３週間も経ったのに、俺はまだこんな事を理解するのは大変だ。
-> DONE

-> END