INCLUDE globals.ink

VAR times_interacted = 0

-> main

=== main ===

{ dog_interactions == "":
    -> log1
}

{ dog_interactions == 1:
    -> log2
}

{ dog_interactions >= 2:
    -> log3
}

=== log1 ===
[Player] ______??? What are you doing here boy!

[Dog] Woof wooff

[Player] I can’t believe I can see you!! You passed away years ago! Have you been a good doggy?

[Dog] Woof!

[Player] Oh right, lemme go into the kitchen to look for food. Maybe I’ll find a bone for you ___!

~ times_interacted = 1
~ dog_interactions = times_interacted
-> DONE

=== log2 ===
[Player] Sorry ___, I couldn’t find any food for you. But I was wondering if you could even eat the food I gave you.

[Dog] Grrrrr, woof

[Player] I wish I could give you belly rubs. I miss you ______.

~ times_interacted = 2
~ dog_interactions = times_interacted
-> DONE

=== log3 ===
[Dog] Woof woof!
-> DONE