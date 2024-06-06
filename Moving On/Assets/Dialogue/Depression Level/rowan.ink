INCLUDE ../globals.ink

VAR times_interacted = 0
VAR currentLocale = ""

~ currentLocale = localeID

VAR larryConditional = ""
VAR raineConditional = ""
VAR rowanConditional = ""

VAR cooked = false

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

{ rowanConditional >= 1 and roof == "true":
    ->log3
    ->DONE
}  

{ rowanConditional >= 1:
    ->log2
    ->DONE
}

//{ 
//    - larry_interactions == 1 && raineConditional >= 1:
//    -> log2
  //  -> DONE
    //- rowanConditional == 1:
    //-> log4
    //-> DONE
//}

//{ 
  //  - rowanConditional == 2 && larryConditional >= 4:
//    -> log3
  //  -> DONE
//    - rowanConditional == 2:
  //  -> log4
    //-> DONE
//}

//{ rowanConditional >= 3:
  //  -> log4
    //-> DONE
//}

-> DONE

=== log1 ===
#speaker: Rowan
Look who it is. Hey, kiddo!

I’m really sorry to hear about what happened. Have you been hanging in there?

#speaker: Addison
Well, umm ...

It’s been hard ...I don’t really know how to explain.

#speaker: Rowan 
Don’t worry, I understand. 

A lot of customers stop by here, so I hear a lot of different stories.

Your mom was no exception — she would talk a lot about you. And I mean <i>a lot</i>.

#speaker: Addison
Really? 

#speaker: Rowan
Of course! You know, your mom really cared about you. 

If she was still around, she would be consulting me about how you would be moving far away for college. 

#speaker: Addison
Yeah ...I guess so.

<i>If only Rowan knew that my mom was right behind me.</i>

Oh Rowan, actually I was wondering. Have you seen anything out of the ordinary recently?

#speaker: Rowan
I can’t say that I have ...but there have been some strange things happening on <color=\#aefff1>the roof</color>. 

Why do you ask?

#speaker: Addison
Just wondering. Thank you.

<i>I see some platforms on the sides of the buildings. I can try getting to the rooftop with them.</i>


~ times_interacted = 1
~ rowan_interactions = times_interacted
-> DONE

=== log2 ===
#speaker: Rowan
Feel free to stop by the café whenever you want. I’ll treat you to some homemade donuts. 

~ times_interacted = 2
~ rowan_interactions = times_interacted
-> DONE

=== log3 ===
#speaker: Addison
Hey Rowan, do you know anything about that closet on the rooftop?

#speaker: Rowan
Yeah, that’s the community storage room.

Why? Do you need something from there?

#speaker: Addison
I saw something shiny, and I wanted to check it out.

#speaker: Rowan
Oh, feel free to! Thing is, I don’t have the key to unlock it.

I think Larry was the last person to use it. You should ask him.

#speaker: Addison
Cool. Thank you!

~ cooked = true
~ key = cooked

-> DONE

=== log4 === 
I wish this rain would stop soon, it’s driving away my customers!! #speaker: Rowan
-> DONE