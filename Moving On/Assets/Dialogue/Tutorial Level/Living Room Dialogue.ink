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
}

// Mom:
// روح
// Addison:
// ادیسون

=== main_en ===

........

"This was the song that Mom used to hum all the time" #speaker: Addison

"Those were such happy times" #speaker: Addison

........

Hey Mom, I can't stay here anymore. Can we go? #speaker: Addison 

// Mom
It looks cold outside. Can you go to my room to get a jacket? #speaker: Mom

// Addison
Do I have to? I think I’ll be fine. #speaker: Addison

// Mom
I don't want you to get sick. Please get it from my room. #speaker: Mom 

Don’t make me have to use my stern voice on you. 

// Addison
Alright fine. I'll go.. #speaker: Addison

-> DONE

=== main_fa ===
#speaker: ادیسون
من دیگه نمی‌تونم اینجا بمونم. میشه بریم؟

#speaker: روح
باشه، ولی اول لباس گرم بپوش سردت نشه. برو ژاکت منو از اتاقم بردار که گرم بمونی.

#speaker: ادیسون
حتما لازمه؟ فکر نکنم سردم بشه!

#speaker: روح
نه تا یه چیزی تنت نکنی از این خونه بیرون نمیریم. برو اون ژاکتمو که دوست داری از اتاقم برادر بپوش

#speaker: ادیسون
باشه باشه 

-> DONE