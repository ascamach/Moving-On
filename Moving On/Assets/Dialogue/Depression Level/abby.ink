INCLUDE ../globals.ink

VAR times_interacted = 0
VAR currentLocale = ""
VAR roofReady = false
~ currentLocale = localeID


{
- currentLocale == "en":
    -> main_en
    -> DONE
}

=== main_en ===

{ abby_interactions == "":
    -> log1
    -> DONE
}

{ abby_interactions >= 1:
    -> log2
    -> DONE
}

=== log1 ===
#speaker: Addison
Hello there.

#speaker: Abby
...

Wait, are you talking to me!?!?

#speaker: Addison
I am. It’s a long story.

#speaker: Abby
Oooh, I love stories! My mommy would tell me stories all the time.

#speaker: Addison
If I had more time, I’d tell you. But right now, I have a question.

Have you seen anything that looks super duper special?

#speaker: Abby
Hmm ...I saw something shiny over there! It just appeared this morning. But I can’t touch anything ...

#speaker: Addison
Aww, I’m really sorry about that. 

<i>Maybe that shiny thing is a special object. I should go take a look.</i>

Thank you! I promise to tell you a story when I finish my little mission.

#speaker: Abby 
Pinky promise!


~ times_interacted = 1
~ abby_interactions = times_interacted

~ roofReady = true
~ roof = roofReady

-> DONE
=== log2 ===

#speaker: Abby
Are you ready to tell your story yet?

#speaker: Addison
Sorry, I’m still on my special mission. I will soon!

#speaker: Abby
Don’t forget you pinky promised me!


-> DONE