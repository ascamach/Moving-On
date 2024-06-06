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

// Larry:
// لری
// Addison:
// ادیسون

=== main_en ===
{ 
- larry_interactions == "":
    -> log1
    -> DONE
    //Default Larry
- larry_interactions >= 1:
    -> log2
    -> DONE
- larry_interactions >= 1 and key == "true":
    ->log3
    ->DONE
    
    
//- larry_interactions == 2:
//    -> log3
//    -> DONE
//- larry_interactions == 3:
//    -> log4
//    -> DONE
//- larry_interactions >= 4:
//    -> log5
//    -> DONE
}

-> DONE

=== main_fa === 

{ 
- larry_interactions == "":
    -> log1_fa
    -> DONE
- larry_interactions == 1:
    -> log2_fa
    -> DONE
- larry_interactions == 2:
    -> log3_fa
    -> DONE
- larry_interactions >= 3:
    -> log4_fa
    -> DONE
}


-> DONE

=== log1_fa ===
#speaker: لری
سلام اَدیسون جان، چقدر بزرگ شدی جوون. دانشگاه میری؟

#speaker: ادیسون
نه هنوز دبیرستانم ولی کم کم تمومه اونم.

#speaker: لری
حیف که مادرت نیست اون روز رو ببینه. ولی بدون که اهالی این محل همیشه به تو افتخار میکنن.

من روزی که پسر خودم فارغ التحصیل شد رو یادمه. از خوشحالی گریه کردم.

برو عمو حوصله تو سر نمیبرم دیگه. در اینجا به روت بازه!

~ times_interacted = 1
~ larry_interactions = times_interacted
-> DONE

=== log2_fa ===
#speaker: لری
یادته کوچک تر که بودی باهم رفتیم ماهی گیری؟ چه روز های بود!

یادته به جای اینکه تو ماهی ها رو بگیری، ماهی ها تورو گرفتن وقتی پریدی تو آب! هاهاها

مامانتو بقیه محل شاکی بودن که چرا من کمکت نکردم.

#speaker: ادیسون
عمو من فقط پنج سالم بود.

#speaker:لری
خوبه دیگه، الان اگه شنا بلدی میدونه منی عمو جان.

~ times_interacted = 2
~ larry_interactions = times_interacted
-> DONE

=== log3_fa ===
#speaker: لری
من اون روزی که مامانت اسباب کشی کرد تو این محل رو یادمه.

آنقدر خانوم با شخصیتی و مهربونی بود که از روز اول همه مثل خانواده‌شون باهاش رفتار میکردن.

یادت نره این ویژگی های مادرت.

~ times_interacted = 3
~ larry_interactions = times_interacted
-> DONE

=== log4_fa ===
#speaker: لری
سوالت چیه عمو جان

# speaker: ادیسون
میخواستم ببینم کیلید انباری سلمونی پیشه شماست؟

#speaker: لری
آره فکر کنم. بذار چک کنم…

(Rustling sounds)

بیا عمو جان. کیلید رو برای چی میخوای؟

#speaker: ادیسون
دنبال یه چیزی ام، فکر کنم اونجا باشه…

#speaker: لری
تو اون انباری از شیره مرغ پیدا میشه تا جونه آدمیزاد. فقط یادت نره کا

رت تموم شد کیلید رو یا به من یا به روانبرگردون لطفا.

#speaker: ادیسون
چشم عمو جان

#speaker: لری
چشمت بی بلا. حواست باشه میری بالا خطرناکه ها. یکی از دختر بچه های محل سال ها قبل از اینکه شما بیاین از اونجا 

افتاد پایین و تموم کرد.

بعضی وقتا که تنها میری رو سقف، صدای گریه هاش میاد.

نترسیدی که؟

#speaker: ادیسون
چرا یکم عمو.

#speaker: لری
بعضی وقتا که میرم اون انباری براش بیسکویت میزارم که روحش گشنش نشه.

#speaker: ادیسون
تا حالا دیدینش؟

#speaker: لری
نه، ولی من به روح و این چیزا اعتقاد دارم زیاد.
-> DONE 

=== log5_fa ===
-> DONE


=== log1 ===
#speaker: Larry
Hey lad! My my, when was the last time I saw you? You’re looking quite older. Are you in college now?

#speaker: Addison
Not yet. I’ll be graduating from high school, though.

#speaker: Larry
Time really flies, doesn’t it? 

I’m sure your mom is very proud of you!

#speaker: Addison
...

#speaker: Larry
Oh my. I’m sorry — I just remembered. This old head can forget things at the worst times. 

#speaker: Addison
...It’s okay. 

#speaker: Larry
Ay, if you wanna talk about anything, you know where to find me!

~ times_interacted = 1
~ larry_interactions = times_interacted
-> DONE

=== log2 ===
#speaker: Larry
Why aren’t there any fish today? I’ll starve if I can’t catch at least one!

~ times_interacted = 2
~ larry_interactions = times_interacted
-> DONE

=== log3 ===
#speaker: Larry
Hey there, lad! Back so soon?

#speaker: Addison
Hey, Larry! I was wondering if you have the key to the community storage room on the rooftop.

#speaker: Larry
Oh! I do! You need it?

#speaker: Addison
Larry rummages through his pockets. Sounds of fish bait, hooks, and other gear can be heard. 

Eventually...

#speaker: Larry
Here you go!

#speaker: Addison
Larry hands me a key.

Thank you! I’ll return it as soon as I’m done.

#speaker: Larry
No worries, lad!

Be careful up there. I get the heebie-jeebies whenever I visit the roof.

I think there might be a ghost there...

Sometimes, I leave a plate of cookies there - you know - just in case whatever’s there gets hungry.

#speaker: Addison
Alright, I’ll keep an eye out.

~ times_interacted = 3
~ larry_interactions = times_interacted
-> DONE

=== log4 ===
#speaker: Larry
Ye look like ye have a question.

# speaker: Addison
I do. I was wondering if you have the key to the gate on the roof of the barbershop?

#speaker: Larry
I believe I do! Lemme check my pockets…

(Rustling sounds)

Here ye go. Why do ye need th’ key? 

#speaker: Addison
There’s something behind the gate that I saw was interesting…

#speaker: Larry
There’s always interesting random stuff in there. 

Don’t ferget to give th’ key back! Ye can give it back to me or Rowan.

#speaker: Addison
Okay. Thank you Larry.

#speaker: Larry
AYE! Be careful up there! A little girl was playing up there and fell off th’ roof. Sadly, she ain’t make it… such a sad tale. 

Sometimes, if yer alone and on the roof, ye can hear faint crying sounds.

Shivers yer timbers, don’t it?

#speaker: Addison
A bit.

#speaker: Larry
Sometimes I leave some cookies by th’ edge where she fell just in case ‘er spirit is hungry.

#speaker: Addison
You can see her?

#speaker: Larry
No, but I just believe in ‘em heebie-jeebies y’know? Anyway, off ye go now!

-> DONE

=== log5 ===
Sigh... One more fish to go. #speaker: Larry
-> DONE