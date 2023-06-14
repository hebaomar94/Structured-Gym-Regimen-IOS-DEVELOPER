// Write your code below 💪
struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int 
  var totalReps: Int
  
  init(name: String, muscleGroups: [String], reps: Int,  sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps 
    self.sets = sets
    self.totalReps = sets * reps 
  }
}
//Adding Exercise Instances
var pushUp = Exercise(name: "Push up",
muscleGroups: ["Triceps", "Chest", "Shoulders"],
reps: 10,
sets: 3)
//print (pushUp)

var  squats = Exercise(name: "Squats",
muscleGroups: ["gluteus maximus", "minimus, and medius (buttocks)"
,"quadriceps (front of the thigh)"
,"hamstrings (back of the thigh)"
,"adductor (groin)"
,"hip flexors"
,"calves."],
reps: 8,
sets: 3)
 //print (squats)

 //Creating The Regimen Structure
struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }
  //Forming an Exercise Plan
  //method
 func printExercisePlan() {
  print("Today is \(self.dayOfWeek) and you're going to:")
  for exercise in self.exercises {
    print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
    print("That's a total of \(exercise.totalReps) \(exercise.name)s")
  }
}
}
//instance
var mondayRegimen = Regimen(dayOfWeek: "Monday"
,exercises: [pushUp])

//print(mondayRegimen)
//append the method name with parentheses to the instance name using dot notation
mondayRegimen.printExercisePlan()















