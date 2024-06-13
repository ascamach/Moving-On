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
     - currentLocale == "ja":
        -> main_ja
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
Hmm ... I don’t have a map of where the <color=\#aefff1>special objects</color> are. Why don’t we go and explore the neighborhood?

~ depressionFirstDialogue = true
-> DONE

=== main_fa ===
#speaker:  مامان
والله دقیقا نمی دونم از کجا باید شروع کنیم یا کجا باید بریم… ولی میدونم چند تا چیزه مهمه که باید از پیدا کنم 
قبله رفتن. بیا از محله خودمون شروع کنیم.


~ depressionFirstDialogue = true
-> DONE

=== main_ja ===
#speaker:「母」
「ん。。。特別なもの地図がありません。近所で探しにいきましょうか？」

~ depressionFirstDialogue = true
-> DONE

