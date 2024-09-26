//
//  Workout.swift
//  Forgeapp
//
//  Created by Lotte Faber on 23/09/2024.
//

import Firebase
import FirebaseFirestore

<<<<<<< HEAD
// Exercise Model
struct Exercise: Identifiable, Codable {
    @DocumentID var id: String? // Unique ID for each exercise
    var name: String
    var sets: Int
    var reps: [Int]
    var notes: String

    init(name: String, sets: Int, reps: [Int], notes: String, superset: Bool? = false) {
        self.name = name
        self.sets = sets
        self.reps = reps
        self.notes = notes
    }
}

// Workout Model
struct Workout: Identifiable, Codable {
    @DocumentID var id: String? // Unique ID for each workout
    var title: String
    var description: String
    var muscleGroup: [String]
    var exerciseCount: Int? 
    var exercises: [Exercise]? // Array to hold all exercises in the workout

    init(title: String, description: String, muscleGroup: [String], exerciseCount : Int? = 0, exercises: [Exercise]? = nil) {
        self.title = title
        self.description = description
        self.muscleGroup = muscleGroup
        self.exerciseCount = exerciseCount
        self.exercises = exercises
    }
=======
struct Workout: Identifiable, Codable {
    @DocumentID var workoutId: String?
    let ownerUid: String
    let timestamp: Timestamp
    let title: String
    let description: String?
    let muscleGroups: [String]?
    let exercises: [Exercise]?
    
    var id: String {
        return workoutId ?? NSUUID().uuidString
    }
}

struct Exercise: Identifiable, Codable {
    let id: String
    let name: String
    let sets: Int
    let reps: [Int]
    let notes: String
    
    // This could be used to store the ID from the external API
    let externalApiId: String?
>>>>>>> main
}
