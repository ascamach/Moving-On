INCLUDE ../globals.ink

VAR times_interacted = 0
VAR currentLocale = ""

~ currentLocale = localeID

VAR larryConditional = ""
VAR raineConditional = ""
VAR rowanConditional = ""

~ larryConditional = larry_interactions
~ raineConditional = raine_interactions
~ rowanConditional = rowan_interactions

{
- currentLocale == "en":
    -> main_en
    -> DONE
- currentLocale == "fa":
    -> main_fa
    -> DONE
}

// Rowan:
// روون
// Addison:
// ادیسون

=== main_fa === 

{ rowanConditional == "":
    -> log1_fa
    -> DONE
}

{ 
    - larry_interactions == 1 && raineConditional >= 1:
    -> log2_fa
    -> DONE
    - rowanConditional == 1:
    -> log4_fa
    -> DONE
}

{ 
    - rowanConditional == 2 && larryConditional >= 4:
    -> log3_fa
    -> DONE
    - rowanConditional == 2:
    -> log4_fa
    -> DONE
}

{ rowanConditional >= 3:
    -> log4_fa
    -> DONE
}

-> DONE

=== log1_fa ===
#speaker: روون
اوه اَدیسون جان تویی!

حالت چطوره؟ کم پیدایی عمو جان؟

#speaker: ادیسون
هییی نمی‌دونم عمو جان. سعی می‌کنم خوب باشم. 

#speaker: روون
خودت بهتر میدونی که همه ما دلمون برای مادرت خیلی تنگ شده. مادرت یکی از مشتری های ثابت من بود.

#speaker: ادیسون
بله میدونم…

#speaker: روون
شرمنده عزیزم، حاله تورو هم خراب کردم. نباید یادت می آوردم. اینجا بیشتر بیا، پیراشکی همیشه مهمونه منی.

~ times_interacted = 1
~ rowan_interactions = times_interacted
-> DONE

=== log2_fa ===
#speaker: روون
بیشتر حواستو جمع کن عمو جان. دیدم داشتی از درو دیوار میرفتی بالا نگران شدم. مامانتم اگه اینجا بود همینو می گفت.

#speaker: ادیسون
اون بالا یه در هست که قفله. شما میدونین چطوری میشه بازش کرد؟

#speaker: روون
اونجا می‌خوای بری چیکار؟

#speaker: ادیسون
اونجا یه چیزی هست که لازم دارم.

#speaker: روون
والله یادم نیست.

#speaker: ادیسون
چطوری میتونم برم توش؟

#speaker: روون
اَدیسون جان فکر کنم بار آخر لَری کلید اونجا رو داشت.

برو ببین پیشه اونه؟

~ times_interacted = 2
~ rowan_interactions = times_interacted
-> DONE

=== log3_fa ===
#speaker: روون
کیلید رو پیدا کردی؟

#speaker: ادیسون
بله، ممنون

#speaker: روون
خدارو شکر، باز اگه کمکی خواستی بیا پیشم عمو.

~ times_interacted = 3
~ rowan_interactions = times_interacted
-> DONE

=== log4_fa ===
#speaker: روون
ای کاش این بارون بند بیاد یکم دیگه، هوای بد مشتری ها رو می‌ پرونه!
-> DONE

=== main_en ===

{ rowanConditional == "":
    -> log1
    -> DONE
}

{ 
    - larry_interactions == 1 && raineConditional >= 1:
    -> log2
    -> DONE
    - rowanConditional == 1:
    -> log4
    -> DONE
}

{ 
    - rowanConditional == 2 && larryConditional >= 4:
    -> log3
    -> DONE
    - rowanConditional == 2:
    -> log4
    -> DONE
}

{ rowanConditional >= 3:
    -> log4
    -> DONE
}

-> DONE



-> DONE

=== log1 ===
Oh, it’s Addison! #speaker: Rowan

How have you been? Long time no see! Have you been hanging in there? #speaker: Rowan

Eh, I dunno. Everything is alright. #speaker: Addison

You know, we all miss your mom.

She would come in every morning for a cup of coffee and a sugar donut. Her presence was very well-known. #speaker: Rowan

Yeah, I know… #speaker: Addison

I’m sorry… I realized I made you a bit sad. 

If you need anything from us, feel free to drop by. Free donuts on the house. #speaker: Rowan

~ times_interacted = 1
~ dog_interactions = times_interacted
-> DONE

=== log2 ===
You should be careful! I saw you climbing to the roof over there. Your mom would agree with what I have to say. #speaker: Rowan

I saw that there’s a locked gate up there. Is there a key to unlock it? #speaker: Addison

Why do you need to unlock that gate? #speaker: Rowan

Oh, I saw something behind the gate and I wanted to see it. #speaker: Addison

Hm… I can’t remember who last opened the gate or who even has the key. #speaker: Rowan 

Is there anything I can do to break the gate? #speaker: Addison

Addison! Good grief, don’t you become a vandalizer now. Let me— OH I remember! Larry last had the key because he needed to store his fishing gear. #speaker: Rowan

Why don’t you ask him? #speaker: Rowan

~ times_interacted = 2
~ dog_interactions = times_interacted
-> DONE

=== log3 ===
Did you get the key? #speaker: Rowan

Yes I did, thank you Rowan! #speaker: Addison

I’m glad! Now off you go. Remember Addison, the village is always there for you. #speaker: Rowan

~ times_interacted = 3
~ dog_interactions = times_interacted
-> DONE

=== log4 === 
I wish this rain would stop soon, it’s driving away my customers!! #speaker: Rowan
-> DONE