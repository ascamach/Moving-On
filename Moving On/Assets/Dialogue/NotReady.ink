INCLUDE globals.ink

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

=== main_en ===
Come on Sweetie, try looking elsewhere. #speaker: Mom

-> DONE

=== main_fa ===
Farsi here.
-> DONE