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
- larry_interactions == 1:
    -> log2
    -> DONE
- larry_interactions == 2:
    -> log3
    -> DONE
- larry_interactions == 3:
    -> log4
    -> DONE
- larry_interactions >= 4:
    -> log5
    -> DONE
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
Ahoy there, Addison! My my, when was th’ last time I saw ye? Yer looking quite older. Are ye in college? #speaker: Larry

No. I’m going to graduate high school soon, though. #speaker: Addison

Shiver me timbers! Such a shame yer mom couldn’t’ve seen ye graduate. It’s such a major accomplishment. #speaker: Larry

Aye, I remember when my own son graduated from high school. I wept tears o’ joy like there’s no tomorrow! #speaker: Larry

Anyway, do come by soon! ‘S always a treat when ye visit me by th’ docks. #speaker: Larry

~ times_interacted = 1
~ larry_interactions = times_interacted
-> DONE

=== log2 ===
Aye, ye remember the time ye tried fishing when you were just a youngin’? Ye thought ye had to go to the fish, not the fish coming to ye! Argharghargh! #speaker: Larry

Ye didn’t let go when th’ pole started wrangling, and it went “plop!” in the ocean. #speaker: Larry

Yer mom and th’ neighbors sure were angry at me fer not helping ye. #speaker: Larry

I was only five!! #speaker: Addison

Ye start learning young, heh. Good times. #speaker: Larry


~ times_interacted = 2
~ larry_interactions = times_interacted
-> DONE

=== log3 ===
Ye know, I remember th’ day your mom moved into this village. #speaker: Larry

Th’ village took ‘er in like kin. Even though we ain’t related by blood, don’t ferget— we’re always here fer ye. #speaker: Larry

Don’t ferget. #speaker: Larry

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