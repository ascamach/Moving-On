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

// Mom:
// روح
// Addison:
// ادیسون

=== main_en ===
#speaker: Mom
Oh, didn’t the neighbors drop by the other day to give you some food? 

Why don’t you go check out <color=\#aefff1>the fridge</color>? I know you’ve been Doooor-dishing these past weeks.   


-> DONE

=== main_fa ===
#speaker: Mom
ببینم مگه همسایه ها برات غذا نیاورده بودن؟ یخچال رو میخوای چک کنی؟ 

-> DONE

=== main_ja ===

#speaker: 「母」
「そういえば、先日に近所が食べ物をあげに立ち寄りました？」

「冷蔵庫をチェックしましょうね。最近、アディソンがよくドアディッシングをすると分かるよ。」

-> DONE

->END