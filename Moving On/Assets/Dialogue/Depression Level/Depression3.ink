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

// Mom:
// روح
// Addison:
// ادیسون

=== main_en ===
I wish you could see me graduate, mom. I was excited to celebrate with you. #speaker: Addison

I know sweetie… but you know I’m always watching you. I’ll always be celebrating with you! #speaker: Mom

We were gonna go to the barbershop for a new graduated haircut… #speaker: Addison

….and a celebratory dinner with the town afterwards… #speaker: Addison

I was excited to hug you once I got off the stage… #speaker: Addison

I was… #speaker: Addison

Sweetie, I’ll always be here with you. #speaker: Mom

Try not to think about the future, just focus on the now. #speaker: Mom

I’m here with you and I’m so thankful that you can see me even in ghost form. #speaker: Mom 

Nothing matters if I can’t hug you. If I can’t feel your physical presence. #speaker: Addison

I know, baby. I miss giving you hugs. #speaker: Mom

Nothing matters since I can’t hug you and can’t feel your physical presence. #speaker: Mom

-> DONE

=== main_fa ===
#speaker: ادیسون
ای کاش جشن فارغ التحصیلیم اینجا پیشم بودی.

#speaker: روح
میدونم عزیزم، ولی اینو بدون من همیشه کنارتم.

#speaker: ادیسون
قرار بود باهم بریم موهای منو بزنیم

بعد باهم میرفتیم با اهالی محل جشن میگرفتیم.

خیلی دوست داشتم بغلت میکردم.

ای کاش

#speaker: روح
عزیزم من همیشه کنارتم.

به آینده زیادی فکر نکن عزیزم. تو حال زندگی کن.

من همین که تو الان منو میبینی برام یک دنیا ارزش داره.

#speaker: ادیسون
آخه اینجوری نمی‌تونم قشنگ بغلت کنم.

#speaker: روح
میدونم عزیزم. منم همینطور

برای من تو این دنیا و اون دنیا به غیر از تو هیچ چیز دیگه ای مهم نیست.