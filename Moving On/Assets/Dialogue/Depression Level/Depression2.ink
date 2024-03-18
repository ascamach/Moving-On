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
That’s nice of them to offer free donuts! You should take them up on their offer. #speaker: Mom

I know how much you loved going on donut runs with me. #speaker: Mom

Yeah… you remember how you would give me a donut every time I got a 100 on my spelling tests? That was fun. #speaker: Addison

You kept getting 100s after I made that offer, hehe! #speaker: Mom

Anyways, it’s nice that they’re here for you. If you ever need anything, go to them. They’ll always be there for you. #speaker: Mom

I have full faith in them. #speaker: Mom

But I wish you could be there for me.. #speaker: Addison

I know, sweetie, me too.. #speaker: Mom
 
 -> DONE
 
 === main_fa ===
#speaker: روح
دستشون درد نکنه. خیلی آدمای خوبین.
 
یادش بخیر باهم ازشون پیراشکی می گرفتیم.
 
#speaker: ادیسون
 یادش بخیر. هر بار که بیست میگرفتم برام جایزه می گرفتی.

#speaker: روح
چه معامله خوبی بود برای تو. هاها.
 
خداروشکر که بازم همسایه ها هوا تو دارن. 
 
خیالم راهته همچین آدمایی دورتن.
 
#speaker: ادیسون
ولی ای کاش واقعا پیشم بودی. 
 
#speaker: 
حیف که نمیشه زمان برگردوند.
-> DONE