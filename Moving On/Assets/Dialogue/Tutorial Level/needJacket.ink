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

هیچوقت فکر نمیکردم دنیام چقدر سری میتونه عوض شه. #speaker: ادیسون

-> DONE

=== main_ja ===

君にあんな事を言わなければ。。。
-> DONE

-> END