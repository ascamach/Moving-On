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

=== main_en ===
[Oh hey, there’s only a grilled cheese sandwich in there. Perfect. Why don't you have that? #speaker: Mom

(Eats the sandwich) #speaker: ???

//Flashback to a black screen that will have dialogue

...Are you ok?

I'm okay... It's just... I remembered something... Never mind. #speaker: Addison

You're as pale as the moonlight. Sit down, take a moment to breathe. Perhaps some music in the living room will soothe your spirit. #speaker: Mom

-> DONE

=== main_fa ===
#speaker: روح
بیا این ساندویچ رو بخور سرحال بیای.

-> DONE