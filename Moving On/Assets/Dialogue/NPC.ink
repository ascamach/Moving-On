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
[Addison] Sparky??? What are you doing here boy!

[Dog] Woof wooff

[Addison] I can’t believe I can see you!! You passed away years ago! Have you been a good doggy?

[Dog] Woof!

[Addison] Oh right, lemme go into the kitchen to look for food. Maybe I’ll find a bone for you Sparky!

~ times_interacted = 1
~ dog_interactions = times_interacted
-> DONE

=== log2 ===
[Addison] Sorry Sparky, I couldn’t find any food for you. But I was wondering if you could even eat the food I gave you.

[Dog] Grrrrr, woof

[Addison] I wish I could give you belly rubs. I miss you Sparky.

~ times_interacted = 2
~ dog_interactions = times_interacted
-> DONE

=== log3 ===
[Dog] Woof woof!
-> DONE