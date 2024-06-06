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

{ dog_interactions >= 1:
    -> log2
    -> DONE
}

-> DONE

=== log1 ===
#speaker: Addison
Wait a minute ... 

Sparky?? //animated text, moderate wobble

It’s been so many years!

#speaker: Sparky
Woof! Woof woof! (Sparky seems happy to see Addison again.)

#speaker: Addison
Aww, I’ve missed you too! Who’s a good boy?

#speaker: Sparky
Woof woof! (Sparky seems to be saying “Me me! I have been a good boy!”)

~ times_interacted = 1
~ dog_interactions = times_interacted
-> DONE

=== log2 ===
#speaker: Sparky
Woof woof!

~ times_interacted = 2
~ dog_interactions = times_interacted
-> DONE

