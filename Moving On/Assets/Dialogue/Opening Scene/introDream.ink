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

// Mom:
// روح
// Addison:
// ادیسون

=== main_fa ===
#speaker: ادیسون

مامان، لطفا از پیشم نرو

هنوز خیلی چیز ها مونده که باید ازت یاد بگیرم.

خیلی جاها مونده که قول دادی بهم نشون بدی.

هنوز هتل مورد علاقه تو بهم نشون ندادی.

قول داده بودی جشن فارغ التحصیلیم کنارم باشی.

لطفا از پیشم نرو.

من بی تو نمی تونم.

-> DONE

=== main_en ===

Mom, don't leave this world yet. Please don’t leave… #speaker: Addison

There’s still so much for us to do together!

There’s still places we have to visit on our travel list! 

You always wanted to try that cafe down by the corner right? You want to see me graduate college right? Please don’t leave. 

I don’t know what I’ll do without you. 

Please don't leave. 

-> DONE