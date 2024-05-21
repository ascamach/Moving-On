INCLUDE ../globals.ink

VAR currentLocale = ""
VAR not_ready = false

~ currentLocale = localeID

{
- currentLocale == "en":
    -> main_en
    -> DONE
- currentLocale == "fa":
    -> main_fa
    -> DONE
    
- currentLocale == "ja":
    -> main_ja
    -> DONE
}

=== main_en ===

Who’s there? #speaker: Addison

<i>I scratch my eyes in disbelief. Although I couldn’t believe it, the one standing right in front of me is...</i> #speaker: Addison

...Mom??? #speaker: Addison

What the—? #speaker: Addison

Calm down, Addison— it’s me! #speaker: Mom

<i>All I could do was stand there, stunned in shock. Was this real?</i> #speaker: Addison

No, that can’t be right... I must be imagining things, I’m still in a dream— yeah, that’s it!

I’m still dreaming. I should pinch myself to wake up, isn’t that how it works? #speaker: Addison

CALM DOWN! #speaker: Mom

...

...

...

It’s going to be alright, sweetie. #speaker: Mom

I’ve missed you so much... #speaker: Addison

I’ve missed you too, Addison. #speaker: Mom

Once I died, I’ve always been by your side. But you weren’t able to see me... #speaker: Mom

...until now. #speaker: Mom


Why can I see you now Mom? #speaker: Addison

Why now? #speaker: Addison

I can explain what’s going on.  #speaker: Mom

Another ghost had told me that I’m stuck in a limbo spirit world. #speaker: Mom

According to them, I can’t move on until I collect enough “special” objects.  #speaker: Mom

If I don’t find them soon, I’ll evaporate into dust and will disappear from the face of this world. #speaker: Mom

The only issue is...I can’t touch anything. I just go through everything. #speaker: Mom

Do you think you can help me, sweetie? #speaker: Mom

+ [I guess...]
    I know things didn’t end well for us, and I’m sorry for that. Let’s go on one more journey together, yeah? #speaker: Mom
    -> DONE

+ [Of course!]
    Thank you, sweetie. Let’s go get ready. #speaker: Mom
    -> DONE

=== main_fa ===
dafo;ljdaksfljfdas
-> DONE

=== main_ja ===
jflskdajasdkfljdsaflkjafdl
-> DONE