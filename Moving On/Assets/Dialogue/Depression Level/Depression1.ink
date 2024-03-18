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

// Mom:
// روح
// Addison:
// ادیسون

=== main_en ===
#speaker: Mom
Hmm… I don’t have a map of where the first special object is. Shall we go through and explore the neighborhood?

-> DONE

=== main_fa ===
#speaker: روح
نقشه اینجا رو نداریم. بهتره بریم محله رو بگردیم ببینیم چیزی که دنبالشم رو پیدا می کنیم.
-> DONE