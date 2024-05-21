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

#speaker: Addison
It's been so long since I stepped in here.

It almost feels like normal.

It almost feels…

Peaceful...

........ 

It was a similar, gloomy day, back when I was younger. // middle school era

I was walking back from school, where I had gotten injured from something that happened.

An upperclassman hurt me… I didn’t want to argue, but I needed to stand up for myself.

Mom was waiting at the door for me, my nose red and sniffling from the cold. 

Tears were still rolling down my face. 

Mom told me the school called her and for me not to worry. Everything was going to be okay. 

She then gave me a warm hug, and wrapped this specific jacket around me.

I’ll never forget her warmth and comfort.

…………….. 


#speaker: Mom
Sweetie… I know it’s been really rough—you’ve been going through a lot all by yourself, but… listen to me. I’m here. You’re going to be alright. 

#speaker: Addison
But you’re not! // *wobbly effect*

Nothing’s the same anymore. How can I keep going forward without you?


You've been there all my life. You left all of a sudden, and I don’t know what to do without you.

#speaker: Mom
I know, and I can’t express how much I wish I could physically be there for you. To give you all the hugs you want. 

It may not seem like it right now, but trust me. Everything will be okay. Everything will always turn out okay.

#speaker: Addison
But how can everything become okay if you’re not always there for me?

#speaker: Mom
Let’s take things one step at a time. Focus on the now. Don’t worry about the future yet.

Why don’t you put on my jacket? That’s a good start. Just think of it as you’re carrying a part of me everywhere. 

#speaker: Addison
…

#speaker: Mom
Addison, shall we head out now?

#speaker: Addison
Okay Mom, I’m ready. Let's stick together, okay?

-> DONE

=== main_fa ===
#speaker: روح
قشنگم گریه نکن دیگه. من اگه میتونستم الان

یه دله سیر بغلت میکردم. ولی تو این حالت چیزی از دستم بر نمیاد.

#speaker: ادیسون
دلم واسه بغلت تنگ شده. واسه خودت. واسه بوت.

#speaker: روح
منم عزیز دلم. ولی اینو بدون که من همیشه کنارتم و نمیزارم تنه

ا بمونی. بهت قول میدم. ممکنه یکم عوض شده باشم ولی تو یکی و یدونه منی.

#speaker: ادیسون
نه. من دلم برای گرمای وجودت تنگ شده. برای مامانم…

#speaker: روح
آره ولی…

#speaker: روح
ولی نداره. پاشو بریم بیرون.

#speaker: ادیسون
باشه مامان. من حاضر ام. ولی تنهام نذاریا، قول؟

->DONE