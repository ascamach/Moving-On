INCLUDE globals.ink

{ number_chosen == "": -> main | -> already_chose}


=== main ===
Which number do you choose?
    + [1]
        -> chosen("1")
    + [2]
        -> chosen("2")
    + [3]
        -> chosen("3")
        
=== chosen(number) ===
You chose {number}!
~ number_chosen = number
-> DONE

=== already_chose ===
You already chose {number_chosen}!
-> END