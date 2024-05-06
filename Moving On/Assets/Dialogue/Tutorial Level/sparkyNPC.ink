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

=== main_fa === 

{ dog_interactions == "":
    -> log1_fa
    -> DONE
}

{ dog_interactions == 1:
    -> log2_fa
    -> DONE
}

{ dog_interactions >= 2:
    -> log3_fa
    -> DONE
}

-> DONE

=== log1_fa ===
اسپارکی؟؟ تو اینجا چیکار می‌کنی؟#speaker: ادیسون

هاپ هاپ #speaker: جرقه ای

باورم نمیشه دوباره میتونم میبینمت!#speaker: ادیسون

هاپ #speaker: جرقه ای

اوه، بذار برم آشپزخونه ببینم غذا چی داریم. شاید یه جایزه هم برای تو پیدا کنم! #speaker: ادیسون

~ times_interacted = 1
~ dog_interactions = times_interacted
-> DONE

=== log2_fa ===
اسپارکی ، نتونستم برات چیزی پیدا کنم. ولی اصلا چیزی میتونی بخوری؟  #speaker:ادیسون

هاپ هاپ #speaker: جرقه ای

ای کاش میتونستن حداقل نازت کنم. خیلی دلم برات تنگ شده. #speaker: ادیسون

~ times_interacted = 2
~ dog_interactions = times_interacted
-> DONE

=== log3_fa ===
هاپ هاپ #speaker: جرقه ای

-> DONE


=== main_en ===

{ dog_interactions == "":
    -> log1
    -> DONE
}

{ dog_interactions == 1:
    -> log2
    -> DONE
}

{ dog_interactions >= 2:
    -> log3
    -> DONE
}

-> DONE

=== log1 ===
Sparky??? What are you doing here boy! #speaker: Addison

Woof wooff #speaker: Sparky

I can’t believe I can see you!! You passed away years ago! Have you been a good doggy? #speaker: Addison

Woof! #speaker: Sparky

Oh right, lemme go into the kitchen to look for food. Maybe I’ll find a bone for you Sparky! #speaker: Addison

~ times_interacted = 1
~ dog_interactions = times_interacted
-> DONE

=== log2 ===
Sorry Sparky, I couldn’t find any food for you. But I was wondering if you could even eat the food I gave you. #speaker: Addison

Grrrrr, woof #speaker: Sparky

I wish I could give you belly rubs. I miss you Sparky. #speaker: Addison

~ times_interacted = 2
~ dog_interactions = times_interacted
-> DONE

=== log3 ===
Woof woof! #speaker: Sparky
-> DONE