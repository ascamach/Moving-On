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

{ hubGrandma_interactions == "":
    -> log1_en
    -> DONE
}

{ hubGrandma_interactions >= 1:
    -> log2_en
    -> DONE
}

-> DONE

=== main_fa === 

{ hubGrandma_interactions == "":
    -> log1_fa
    -> DONE
}

{ hubGrandma_interactions >= 1:
    -> log2_fa
    -> DONE
}

-> DONE

=== main_ja === 

{ hubGrandma_interactions == "":
    -> log1_ja
    -> DONE
}

{ hubGrandma_interactions >= 1:
    -> log2_ja
    -> DONE
}

-> DONE

=== log1_en ===
OK BOOMEr

~ times_interacted = 1
~ hubGrandma_interactions = times_interacted
-> DONE

=== log2_en ===
jdslaijfkl

~ times_interacted = 2
~ hubGrandma_interactions = times_interacted
-> DONE

=== log1_fa ===
#speaker: ادیسون
یه لحظه وایسا 

اسپارکی؟ //animated text, moderate wobble

باورم نمیشه!

#speaker: جرقه ای
واق، واق، واق! (اسپارکی به نظر میرسه که خوشحاله)

#speaker: ادیسون
منم دلم برات تنگ شده بود پسرم! تو پسر قشنگ کی بودی؟

#speaker: جرقه ای
واق، واق، واق! (اسپارکی به نظر میرسه که تایید میکنه)
~ times_interacted = 1
~ hubGrandma_interactions = times_interacted
-> DONE

=== log2_fa ===
#speaker: جرقه ای
واق واق!

~ times_interacted = 2
~ hubGrandma_interactions = times_interacted
-> DONE

=== log1_ja ===
#speaker:「アディソン」
「ちょっと待って。。。」

「スパーキー？？」

「久しぶりね！」

#speaker:「スパーキー」

「ワン！ワンワン！（スパーキーが嬉しそう）」

#speaker:「アディソン」
「俺も会いたいよ！いいこ、いいこ。」

#speaker:「スパーキー」
「ワンワン！（私！私！私はいいこだった！）」


~ times_interacted = 1
~ hubGrandma_interactions = times_interacted
-> DONE

=== log2_ja ===

SUP 

~ times_interacted = 2
~ hubGrandma_interactions = times_interacted
-> DONE

-> END






