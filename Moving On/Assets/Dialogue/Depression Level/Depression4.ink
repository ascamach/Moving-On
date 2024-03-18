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
[Mom] That darn Larry. Funny as hell, but he should've taken care of you better. #speaker: Mom

[Addison] It’s in the past mom, it’s ok. #speaker: Addison

[Mom] I know, but no one lets my baby get hurt! #speaker: Mom
-> DONE
 
 === main_fa ===
#speaker: روح
لری کاراش خیلی بامزس ولی باید بیشتر ازت مواظبت می کرد.
 
#speaker: ادیسون
گذشته ها گذشته.
 
#speaker: روح
میدونم ولی همه باید حواسشون به یکی و یدونه منم باشه.
 -> DONE