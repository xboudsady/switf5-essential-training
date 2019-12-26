/*:
 # Chaining Optionals
 ---
 
 ## Topic Essentials
 Optional chaining allows you to unwrap an optional type that has optional properties of its own. This is most common in classes or structs that contain optional custom types. It’s handy to think of optional chains in a very literal sense, like a chain link. If all the links are present and strong, the chain continues, but if one link fails, the chain breaks.
 
 ### Objectives
 + 
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test classes
struct Item {                           // Declaure our Struct
    var description: String             // Variable, String data type
    var previousOwner: Owner?           // Variable, Optional
}

struct Owner {                          // Declare our Struct
    var name: String                    // Variable, String data type
    
    func returnOwnerInfo() -> String {              // Function with String output
        return "\(name) is the current owner!"
    }
}

// Nested Dictionary
var questDirectory = [                              // Outer Dictionary
    "Fetch Gemstones": [
        "Objective": "Retrieve 5 gemstones",        // Inner Dictionary
        "Secret": "Complete in under 5 minutes"
    ],
    "Defeat Big Boss": [
        "Objective": "Beat the ultimate boss",
        "Secret": "Win with 50% health left"
    ]
]

// Creating the chain
// Create an instances of our Item, Struct
var rareDagger = Item(description: "A unique dagger of unkown origin", previousOwner: nil)

var daggerOwner = Owner(name: "The Great Thief")

// Apply a value to previous Owner property
rareDagger.previousOwner = daggerOwner

// Manually add name property
//rareDagger.previousOwner?.name = "The Old Merchant"


// Unwrapping our optional, in our Item, Struct
// Added question mark is telling compilier to return nil, if no previousOwner value is nil
if let owner = rareDagger.previousOwner?.name {
    print("This item used to be owned by \(owner)")
} else {
    print("Loks like this items history is unknown...")
}

// Check if Owner exist
if let ownerInfo = rareDagger.previousOwner?.returnOwnerInfo() {
    print("Owner found!")
} else {
    print("No owner in our records...")
}

if let gemstoneObjective = questDirectory["Fetch Gemstones"]?["Objective"] {
    print(gemstoneObjective)
}
