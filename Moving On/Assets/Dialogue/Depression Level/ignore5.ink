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
Wow I've never been up here. #speaker: Addison

Be careful please. #speaker: Mom
-> DONE

=== main_fa ===
#speaker: ادیسون
وایی. من تا حالا این بالا نیومدم

#speaker:روح
مواظب باش عزیزم
-> DONE