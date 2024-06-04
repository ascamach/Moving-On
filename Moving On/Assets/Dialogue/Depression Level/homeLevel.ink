INCLUDE ../globals.ink

VAR times_interacted = 0
VAR currentLocale = ""

~ currentLocale = localeID

{ 
- depressionFirstDialogue == "": 
    {
    - currentLocale == "en":
        -> main_en
        -> DONE
    - currentLocale == "fa":
        -> main_fa
        -> DONE
    }
- depressionFirstDialogue == true:
    -> DONE
}
// Mom:
// روح
// Addison:
// ادیسون

=== main_en ===
#speaker: Mom
Hmm... I don’t have a map of where the <color=\#aefff1>special objects</color> are. Why don’t we go and explore the neighborhood?

~ depressionFirstDialogue = true
-> DONE

=== main_fa ===
#speaker: روح
نقشه اینجا رو نداریم. بهتره بریم محله رو بگردیم ببینیم چیزی که دنبالشم رو پیدا می کنیم.
~ depressionFirstDialogue = true
-> DONE