// Localization Variable
VAR localeID = ""

VAR is_ready = false
// Tutorial Level
VAR number_chosen = ""
VAR dog_interactions = ""
VAR gma_interactions = ""
VAR fridgeInteraction =  false
VAR livingInteraction = false

// Depression Level
VAR raine_interactions = ""
VAR abby_interactions = ""
VAR larry_interactions = ""
VAR rowan_interactions = ""
VAR key_obtained = ""
VAR depressionFirstDialogue = ""
VAR depressionRoofDialogue = ""
VAR depressionMiddleDialogue = ""

//Hub World
VAR hubGrandma_interactions = ""

// Functions from Unity
EXTERNAL testFunction()
EXTERNAL fadeImage(fadeAway, imageName)

// Function to change text effect
// List of available effects:
// "default" (no effect)
// "wobble"
// "shake"
EXTERNAL textEffect(effect)