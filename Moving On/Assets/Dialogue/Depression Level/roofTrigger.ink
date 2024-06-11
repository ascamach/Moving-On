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
- currentLocale == "ja":
    -> main_ja
    -> DONE
}

=== main_en ===
#speaker: Addison
<i>Oh, there’s a ghost over there. I should ask her if she knows anything about a “special object”.</i>
-> DONE

=== main_fa ===
اون اونجا هم یه روحه دیگس. میتونم ازش دربارخ اون چیزی که دنبالشی بپرسیم مامان.
-> DONE

=== main_ja ===
#speaker:「アディソン」
「おお、あそこにゴーストがいます。特別なものを聞いてみます。
-> DONE