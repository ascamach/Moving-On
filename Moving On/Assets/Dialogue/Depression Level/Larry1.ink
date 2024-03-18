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

{ dog_interactions == 2:
    -> log3_fa
    -> DONE
}

{ dog_interactions >= 2:
    -> log4_fa
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
~ times_interacted = 3
~ dog_interactions = times_interacted
-> DONE

=== log4_fa ===
OK!
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

{ dog_interactions == 2:
    -> log3
    -> DONE
}
{ dog_interactions >= 3:
    -> log4
    -> DONE
}

-> DONE

=== log1 ===
Ahoy there, Addison! My my, when was th’ last time I saw ye? Yer looking quite older. Are ye in college? #speaker: Larry

No. I’m going to graduate high school soon, though. #speaker: Addison

Shiver me timbers! Such a shame yer mom couldn’t’ve seen ye graduate. It’s such a major accomplishment. #speaker: Larry

Aye, I remember when my own son graduated from high school. I wept tears o’ joy like there’s no tomorrow! #speaker: Larry

Anyway, do come by soon! ‘S always a treat when ye visit me by th’ docks. #speaker: Larry

~ times_interacted = 1
~ dog_interactions = times_interacted
-> DONE

=== log2 ===
Aye, ye remember the time ye tried fishing when you were just a youngin’? Ye thought ye had to go to the fish, not the fish coming to ye! Argharghargh! #speaker: Larry

Ye didn’t let go when th’ pole started wrangling, and it went “plop!” in the ocean. #speaker: Larry

Yer mom and th’ neighbors sure were angry at me fer not helping ye. #speaker: Larry

I was only five!! #speaker: Addison

Ye start learning young, heh. Good times. #speaker: Larry


~ times_interacted = 2
~ dog_interactions = times_interacted
-> DONE

=== log3 ===
Ye know, I remember th’ day your mom moved into this village. #speaker: Larry

Th’ village took ‘er in like kin. Even though we ain’t related by blood, don’t ferget— we’re always here fer ye. #speaker: Larry

Don’t ferget. #speaker: Larry

~ times_interacted = 3
~ dog_interactions = times_interacted
-> DONE
=== log4 ===
Sigh... One more fish to go. #speaker: Larry
-> DONE

