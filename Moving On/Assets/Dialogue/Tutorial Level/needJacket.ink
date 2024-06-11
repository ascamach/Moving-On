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
- currentLocale == "ja":
    -> main_ja
    -> DONE
}

=== main_en ===

You need your jacket before heading out!

-> DONE

=== main_fa ===

قبل از رفتن به ژاکت خود 
!نیاز دارید
-> DONE

=== main_ja ===

出かける前にジャケットが必要です！
-> DONE

-> END