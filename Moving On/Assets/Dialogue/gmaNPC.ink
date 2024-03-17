INCLUDE globals.ink

VAR times_interacted = 0

-> main

=== main ===

{ gma_interactions == "":
    -> log1
}

{ gma_interactions == 1:
    -> log2
}

{ gma_interactions == 2:
    -> log3
}

{ gma_interactions >= 3:
    -> log4
}

=== log1 ===
[Grandma] Hey there sonny! Long time no see hehe.

[Addison] Grandma?! How can I see you? I just saw _____ [dog] in the hallway. What’s going on?

[Grandma] I don’t know sonny but I’ve been watching you from this ghost world for quite some time. 

[Addison] Wait but how come you didn’t disappear? How come you don’t need help like my mom does?

[Grandma] Because I’m waiting for that stubborn grandpa of yours. I can only move on when he comes to the ghost world. 


~ times_interacted = 1
~ gma_interactions = times_interacted
-> DONE

=== log2 ===
[Grandma] Addison, ou’re too skinny. You need to eat more.

[Addison] Ok grandma.

[Grandma] Eat more fruits and vegetables too! You need to be healthy when you enter college.

[Player] Ok grandma..

~ times_interacted = 2
~ gma_interactions = times_interacted
-> DONE

=== log3 ===
[Grandma] Addison, ou’re too skinny. You need to eat more.

[Addison] Ok grandma.

[Grandma] Eat more fruits and vegetables too! You need to be healthy when you enter college.

[Player] Ok grandma..

~ times_interacted = 3
~ gma_interactions = times_interacted
-> DONE

=== log4 ===
[Grandma] Back in my day, I used to go outside and play with my friends. You youngins just stay in and play video games all day.

[Addison] I play with my friends on the computer.

[Grandma] You should go outside and play more.
-> DONE