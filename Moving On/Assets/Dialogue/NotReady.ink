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
- currentLocale == "ja":
    -> main_ja
    -> DONE
}

=== main_en ===
Ehhh #speaker: Addison

I don't want to step foot in here. #speaker: Addison

-> DONE

=== main_fa ===
#speaker: ادیسون
هههه

من نمی خواهم پا در اینجا بگذارم. 
-> DONE

=== main_ja ===
#speaker:「アディソン」
ええ

ここに行きたくない

-> DONE