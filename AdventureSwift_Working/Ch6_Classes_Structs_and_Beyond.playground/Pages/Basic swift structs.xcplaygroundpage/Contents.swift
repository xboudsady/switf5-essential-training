/*:
 # Basic Swift Structs
 ---
 
 ## Topic Essentials
 Swift structures share a very similar syntax and functionality, but they are useful for creating different kinds of instances. While classes are well suited to complex data structures and are passed by reference, structs are passed by value and better suited to creating simple instances that don't need inheritance or reference capabilities.
 
 ### Objectives
 + Declare a basic struct called **Level**
 + Assign a few instance properties
 + Define two custom initializers
 + Add non-mutating and mutating functions
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Declaring a new struct
struct Level {
    let levelID: Int                            // Variable, with data type Int
    var levelObjectives: [String]               // Variable, with data type Array of Strings
    
    var levelDescription: String {
        return "Level ID: \(self.levelID)"
    }
    
    init(id: Int, objectives: [String]) {       // Initialize function for our class
        self.levelID = id                       // First argument as Int
        self.levelObjectives = objectives       // Second argument as Array of Strings
    }
    
    func queryObjectives() {                    // Function to loop through our
        for objective in levelObjectives {
            print("\(objectives)")
        }
    }
    
    mutating func completeObjective(index: Int) {
        levelObjectives.remove(at: index)
    }
}

// Array of Strings
var objectives = ["Find the lost cat", "Collect all gemstones", "Defeat the Big Boss"]

// Create an instances of our Level Struct
// 1st argument, Int; 2nd argument, Array of Strings
var level1 = Level(id: 1, objectives: objectives)


// Value types again
var defaultLevel = level1

level1.completeObjective(index: 0)
level1.queryObjectives()

defaultLevel.queryObjectives()
