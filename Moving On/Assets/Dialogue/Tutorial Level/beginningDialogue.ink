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
- currentLocale == "ja":
    -> main_ja
    -> DONE
}

// Mom:
// روح
// Addison:
// ادیسون

=== main_en ===
You’ve been holed up in your room for the past couple of weeks. Why don’t we get up and prepare to head out? #speaker: Mom 

{ is_ready == "true":
    Sure thing, but give me a bit to get ready. #speaker: Addison
    -> DONE
}

{ is_ready == "false":
    This feels so sudden; I’m not sure if I’m ready. #speaker: Addison

    I know this must be a lot for you right now, but ...I believe in you sweetie. You can do this! You’re a tough cookie! #speaker: Mom

    ...and there you go again with your cringe phrases. #speaker: Addison

    /*sighs*/ Alright, I’m up. #speaker: Addison

    <i>But, am I actually ready for this?</i> #speaker: Addison

    <i>Can I bring myself to go on this journey just to go through that all over again?</i> #speaker: Addison
    -> DONE
}

-> DONE


=== main_fa ===
.بسه دیگه عزیزم، چند هفته اس پاتو از خونه بیرون نذاشتی. پاشو بپوش بریم بیرون یکم حالت عوض شه

{ is_ready == "true":
    .باشه بذار الان میپوشم بریم
    -> DONE
}

{ is_ready == "false":
    .هنوز باورم نمیشه، نمیدونم حس بیرون رفتن دارم یا نه #speaker: Addison
    
    میدونم این چند وقت یکم برات سخت بوده ولی لطفا بخاطره مامان قوی باش. همه دنیای من تویی عزیزم دوست 

   ندارم تو این حال ببینمت.
   
   باشه باشه الان پا میشم.


   !ولی هنوز احصاص میکنم آمادگی شو ندارم

   نمیدونم بتونم قبولش کنم که دوباره قراره از دستت بدم.

    -> DONE
}

-> DONE

=== main_ja ===

#speaker:「母」

「もう、数週間お前は部屋に閉じこもっていたよ。さて、起きて出かける準備をしましょうか。」

{ is_ready == "true":
    #speaker:「アディソン」
    「いいよ、でも少し時間くれ。ちょっと準備する。」
    -> DONE
}

{ is_ready == "false":
    #speaker:「アディソン」
    「これは突然だよ。。。本当にいいのかな？」

    #speaker:「母」
    「アディソンにとって、大変なことに間違いないけど、あなたなら信じっています。できるぞう！タフだよ！」
    
     #speaker:「アディソン」

    「。。。と、また母の恥ずかしいフレーズ。」

    「は。。。よし、行こう。」

    でも、俺は本当に準備できていますか？

    また同じことを感じるかもしれない。。。本当にこの旅に出るかな。。。
    -> DONE
}

-> DONE

-> END