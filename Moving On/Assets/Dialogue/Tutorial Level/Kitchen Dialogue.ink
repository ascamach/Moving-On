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

=== main_en ===
Oh dear, it seems I can't interact with anything in this world. Could you check the fridge for us? #speaker: Mom

-> DONE

=== main_fa ===
#speaker: روح
مثله اینکه من نمی‌تونم به چیزی دست بزنم. ببین غذا چی داریم بخوری.
-> DONE