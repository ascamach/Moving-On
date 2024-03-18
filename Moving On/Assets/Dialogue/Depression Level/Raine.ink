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

// Addison:
// ادیسون
// Raine:
// باران
// Mom:
// روح

=== main_en ===

{ 
- raine_interactions == "":
    -> log1
    -> DONE
- raine_interactions == 1:
    -> log2
    -> DONE
- raine_interactions >= 2:
    -> log3
    -> DONE
}

=== main_fa ===
{ 
- raine_interactions == "":
    -> log1_fa
    -> DONE
- raine_interactions == 1:
    -> log2_fa
    -> DONE
- raine_interactions >= 2:
    -> log3_fa
    -> DONE
}

=== log1 ===
Who are you? You can see me? #speaker: Raine

I can. Who are you? #speaker: Addison

I’m Raine! I’m seven years olddd!! #speaker: Raine

Oh, I’m Addison. Nice to meet you. Why are you here? #speaker: Addison

I’m waiting for mama to pick me up to go back home. Who’s that? #speaker: Raine

Hi dearie! I’m Addison’s mom. Where’s your mom? #speaker: Mom

I’m not sure… #speaker: Raine

I just know one day I was having a tea party here, but my friend— Mr. Teetee— he almost fell off the roof, so I tried to catch him. #speaker: Raine

I don’t remember what happened, but I found myself floating around and glowing! #speaker: Raine

Oh dear… #speaker: Mom

After I got used to floating around, I tried to look for mama, but I couldn't find her. #speaker: Raine

Then, I remembered that she said to always stay where I am so she can find me! #speaker: Raine

Have you seen mama? #speaker: Raine

I don’t think I have, darling. #speaker: Mom

Oh... That’s okay. Thanks anyway! I’ll keep waiting for her! #speaker: Raine
~ times_interacted = 1
~ raine_interactions = times_interacted
-> DONE

=== log2 ===
I miss mama… #speaker: Raine

How come your mama is floating and glowing like me? #speaker: Raine

Hm… I think you must have drank tea with magical abilities. Maybe your mama will drink the same tea as you and float and glow like you. #speaker: Addison

Really? I want that! I hope she’ll drink the magical tea so I can see her clearly! It’s hard to find her when she’s not floaty and glowy. #speaker: Raine

~ times_interacted = 2
~ raine_interactions = times_interacted
-> DONE

=== log3 ===
Mr. Teetee, don’t drink so much tea! You’ll have to pee again!! #speaker: Raine
-> DONE

=== log1_fa ===
#speaker: باران
تو کیییی؟ منو میتونی ببینی؟

#speaker: ادیسون
آره، شما؟

#speaker: باران
من رینی ام! هفت سالمه.

#speaker: ادیسون
اوه… من اسمم اَدیسونِ. اینجا چیکار می‌کنی؟

#speaker: باران
من منتظر مامانم ام تا بیاد دنبالم بریم خونمون. اون کیه کنارت؟ 

#speaker: روح
سلام عزیزم، من مادر اَدیسونم. مامان تو کجاست؟

#speaker: باران
نمی دونم…

تنها چیزی که یادمه اینه که  اینجا داشتم 

بازی میکردم، که یه دفعه آقای تیتی عروسکم داشت پرت می‌شد پایین، که پریدمگرفتمش!

#speaker: روح
Oh dear…

#speaker: باران
اشکال نداره الان عادت دارم به پرواز ولی مامانم رو می‌خوام.

الان هم که ایجام به خاطره اینه که مامانم گفته بود اینجا با عروسکم‌ بازی کنم تا کارش تموم شه بیاد دنبالم.

شما ندیدینش؟

#speaker: روح
نه متاسفانه!

#speaker: باران
اوه ممنون واسه کمکتون. من اینجا منتظرش میمونم تا بیاد.
~ times_interacted = 1
~ raine_interactions = times_interacted
-> DONE

=== log2_fa ===
#speaker: باران
دلم مامانمو می‌خواد…

چرا مامانت تو‌هم مثل من میتونه پرواز کنه؟

#speaker: ادیسون
اوه فکر کنم شما جفتتون یه چایی جادویی خوردین که بهتون این ویژگی رو‌ داده. شاید مامان تو و منم یه روزی دستمون 

به این چایی افسانه ای برسه و مثل شما بشیم.

#speaker: باران
واقعا!؟ امیدوارم که اون روز زود بیاد تا بتونم دوباره ببینمش. اینجوری خیلی سخته پیداش کنم.
-> DONE

=== log3_fa ===
#speaker: باران
آقای تیتی لطفا زیاد چایی نخور. دوباره دستشوییت می‌گیره.
-> DONE