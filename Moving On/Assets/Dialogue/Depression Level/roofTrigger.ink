INCLUDE ../globals.ink

VAR times_interacted = 0
VAR currentLocale = ""

~ currentLocale = localeID


{
- currentLocale == "en":
    -> main_en
    -> DONE
}

=== main_en ===
#speaker: Addison
<i>Oh, there’s a ghost over there. I should ask her if she knows anything about a “special object”.</i>
-> DONE