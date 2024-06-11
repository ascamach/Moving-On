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

{ dog_interactions == "":
    -> log1_en
    -> DONE
}

{ dog_interactions >= 1:
    -> log2_en
    -> DONE
}

-> DONE

=== main_fa === 

{ dog_interactions == "":
    -> log1_fa
    -> DONE
}

{ dog_interactions >= 1:
    -> log2_fa
    -> DONE
}

-> DONE

=== main_ja === 

{ dog_interactions == "":
    -> log1_ja
    -> DONE
}

{ dog_interactions >= 1:
    -> log2_ja
    -> DONE
}

-> DONE

=== log1_en ===
#speaker: Addison
Wait a minute ... 

Sparky?? //animated text, moderate wobble

It’s been so many years!

#speaker: Sparky
Woof! Woof woof! (Sparky seems happy to see Addison again.)

#speaker: Addison
Aww, I’ve missed you too! Who’s a good boy?

#speaker: Sparky
Woof woof! (Sparky seems to be saying “Me me! I have been a good boy!”)

~ times_interacted = 1
~ dog_interactions = times_interacted
-> DONE

=== log2_en ===
#speaker: Sparky
Woof woof!

~ times_interacted = 2
~ dog_interactions = times_interacted
-> DONE

=== log1_fa ===
یه لحظه وایسا 

اسپارکی؟ //animated text, moderate wobble

باورم نمیشه!

#speaker: Sparky
واق، واق، واق! (اسپارکی به نظر میرسه که خوشحاله)

#speaker: Addison
منم دلم برات تنگ شده بود پسرم! تو پسر قشنگ کی بودی؟

#speaker: Sparky
واق، واق، واق! (اسپارکی به نظر میرسه که تایید میکنه)
~ times_interacted = 1
~ dog_interactions = times_interacted
-> DONE

=== log2_fa ===
واق واق!

~ times_interacted = 2
~ dog_interactions = times_interacted
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
~ dog_interactions = times_interacted
-> DONE

=== log2_ja ===
#speaker:「スパーキー」
「ワン！」

~ times_interacted = 2
~ dog_interactions = times_interacted
-> DONE

-> END






