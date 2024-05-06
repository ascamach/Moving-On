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
I wish we could tell her - #speaker: Addison

I know. Don’t say it; we’re going to make her more sad. #speaker: Mom

I feel bad for her, though. #speaker: Addison

She lost her mom like me… #speaker: Addison

Just opposite. #speaker: Addison

See, there’s nothing good in the world. Everything sucks. #speaker: Addison

There’s no point in living. #speaker: Addison

Everyday since you’ve been gone, I feel like I have a hole in my heart. #speaker: Addison 

There’s no point in doing anything. I just want to hole myself in my bed and never wake up. #speaker: Addison

Stop that, Addison. #speaker: Mom

Those people you just talked to? They all care about you. #speaker: Mom

They worry about you. #speaker: Mom

You matter to them. #speaker: Mom

Don’t forget that, Addison. Just because I’m gone doesn’t mean you stop living. #speaker: Mom

Live life for me. I want you to enjoy life. #speaker: Mom
-> DONE

=== main_fa ===
#speaker: ادیسون
ای کاش می‌شد بهش بگیم.

#speaker: روح
میدونم ولی بهتره که ناراحتش نکنیم.

#speaker: ادیسون
دلم براش میسوزهههه.

اونم مثله من از مامانش دوره.

ولی برعکس

ببین هیچ چیز قشنگی تو این دنیا نیست. همه چی آخرش تلخه.

هیچ دلیلی برای ادامه دادن نیست.

از روزی که تو رفتی، انگار یه گوشه از قلبم خالی شده.

هیچ دلیلی نیست که از تختم بیام بیرون. دوست دارم فقط بخوابم و ادامه ندم.

#speaker: روح
بسته ادیسون.

این کسایی که باهاشون داشتی حرف می‌زدی. تو براشون مهمی.

نگرانت میشن

اینجوری مسکنی منم نگران میشم

اینو یادت نره که چون من دیگه نیستم دلیلی نمیشه مه تو از زندگیت لذت نبری

برای من لطفا زندگی کن. برای خودت. ازش لذت ببر.
-> DONE