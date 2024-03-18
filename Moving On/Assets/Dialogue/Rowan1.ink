INCLUDE ../globals.ink

VAR times_interacted = 0
VAR currentLocale = ""

~ currentLocale = localeID

VAR larryConditional = ""
VAR raineConditional = ""

~ larryConditional = larry_interactions
~ raineConditional = raine_interactions

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

{ dog_interactions == 1 && raineConditional >= 1:
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

{ dog_interactions == 1:
    -> log1
    -> DONE
}

{ 
- dog_interactions == 2 && raineConditional >= 1:
    -> log2
    -> DONE
- dog_interactions == 2:
    -> log4
    -> DONE
}

{
- dog_interactions == 3 && larryConditional >= 4:
    -> log3
    -> DONE
- dog_interactions == 3:
    -> log4
    ->DONE
}

{ dog_interactions == 4:
    -> log4
    -> DONE
}

-> DONE

=== log1 ===
[Rowan] Oh, it’s Addison! #speaker: Rowan

[Rowan] How have you been? Long time no see! Have you been hanging in there? #speaker: Rowan

[Addison] Eh, I dunno. Everything is alright. #speaker: Addison

[Rowan] You know, we all miss your mom.

[Rowan] She would come in every morning for a cup of coffee and a sugar donut. Her presence was very well-known. #speaker: Rowan

[Addison] Yeah, I know… #speaker: Addison

[Rowan] I’m sorry… I realized I made you a bit sad. 

[Rowan] If you need anything from us, feel free to drop by. Free donuts on the house. #speaker: Rowan

~ times_interacted = 1
~ dog_interactions = times_interacted
-> DONE

=== log2 ===
[Rowan] You should be careful! I saw you climbing to the roof over there. Your mom would agree with what I have to say. #speaker: Rowan

[Addison] I saw that there’s a locked gate up there. Is there a key to unlock it? #speaker: Addison

[Rowan] Why do you need to unlock that gate? #speaker: Rowan

[Addison] Oh, I saw something behind the gate and I wanted to see it. #speaker: Addison

[Rowan] Hm… I can’t remember who last opened the gate or who even has the key. #speaker: Rowan 

[Addison] Is there anything I can do to break the gate? #speaker: Addison

[Rowan] Addison! Good grief, don’t you become a vandalizer now. Let me— OH I remember! Larry last had the key because he needed to store his fishing gear. #speaker: Rowan

[Rowan] Why don’t you ask him? #speaker: Rowan

~ times_interacted = 2
~ dog_interactions = times_interacted
-> DONE

=== log3 ===
[Rowan] Did you get the key? #speaker: Rowan

[Addison] Yes I did, thank you Rowan! #speaker: Addison

[Rowan] I’m glad! Now off you go. Remember Addison, the village is always there for you. #speaker: Rowan
~ times_interacted = 3
~ dog_interactions = times_interacted
-> DONE

=== log4 ===
[Rowan] I wish this rain would stop soon, it’s driving away my customers!! #speaker: Rowan
-> DONE




