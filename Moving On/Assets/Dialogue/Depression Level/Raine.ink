INCLUDE ../globals.ink

VAR times_interacted = 0

-> main

=== main ===

{ raine_interactions == "":
    -> log1
}

{ raine_interactions == 1:
    -> log2
}

{ raine_interactions >= 2:
    -> log3
}

=== log1 ===
[Raine] Who are you? You can see me? #speaker: Raine

[Addison] I can. Who are you? #speaker: Addison

[Raine] I’m Raine! I’m seven years olddd!! #speaker: Raine

[Addison] Oh, I’m Addison. Nice to meet you. Why are you here? #speaker: Addison

[Raine] I’m waiting for mama to pick me up to go back home. Who’s that? #speaker: Raine

[Mom] Hi dearie! I’m Addison’s mom. Where’s your mom? #speaker: Mom

[Raine] I’m not sure… #speaker: Raine

[Raine] I just know one day I was having a tea party here, but my friend— Mr. Teetee— he almost fell off the roof, so I tried to catch him. #speaker: Raine

[Raine] I don’t remember what happened, but I found myself floating around and glowing! #speaker: Raine

[Mom] Oh dear… #speaker: Mom

[Raine] After I got used to floating around, I tried to look for mama, but I couldn't find her. #speaker: Raine

[Raine] Then, I remembered that she said to always stay where I am so she can find me! #speaker: Raine

[Raine] Have you seen mama? #speaker: Raine

[Mom] I don’t think I have, darling. #speaker: Mom

[Raine] Oh... That’s okay. Thanks anyway! I’ll keep waiting for her! #speaker: Raine


~ times_interacted = 1
~ raine_interactions = times_interacted
-> DONE

=== log2 ===
[Raine] I miss mama… #speaker: Raine

[Raine] How come your mama is floating and glowing like me? #speaker: Raine

[Addison] Hm… I think you must have drank tea with magical abilities. Maybe your mama will drink the same tea as you and float and glow like you. #speaker: Addison

[Raine] Really? I want that! I hope she’ll drink the magical tea so I can see her clearly! It’s hard to find her when she’s not floaty and glowy. #speaker: Raine

~ times_interacted = 2
~ raine_interactions = times_interacted
-> DONE

=== log3 ===
[Raine] Mr. Teetee, don’t drink so much tea! You’ll have to pee again!! #speaker: Raine
-> DONE