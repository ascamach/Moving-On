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
// Addison
I can't stay here anymore. Let's go. #speaker: Addison 

// Mom
But you're not dressed for the cold outside. You should wear something warmer. My jacket, in my room, will keep you cozy.. #speaker: Mom


// Addison
Do I have to? I think I’ll be fine. #speaker: Addison

// Mom
We are not stepping out until you put on a proper jacket. Please, fetch it from my room.. #speaker: Mom 

Don’t make me have to use my stern voice on you. 

// Addison
Alright, I'll go.. #speaker: Addison

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