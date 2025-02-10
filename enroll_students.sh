#!/bin/bash

# Define semester name (e.g., Spring-2025)
SEMESTER="Sept-2025"

# Create the main directory for the semester
mkdir -p "$SEMESTER"

echo "📂 Directory '$SEMESTER' created successfully!"

# List of sample student names
STUDENTS=("Alice" "Bob" "Charlie" "David" "Eve" "Frank" "Grace" "Hannah" "Ian" "Jack")

# C-style for loop to create student directories
for ((i = 1; i <= ${#STUDENTS[@]}; i++)); do
    STUDENT_NAME=${STUDENTS[i-1]}  # Get the student name
    STUDENT_ID="S2025$(printf "%03d" $i)"  # Generate a unique ID (e.g., S2025001)

    # Create a directory for each student
    mkdir -p "$SEMESTER/$STUDENT_NAME"

    # Create a student file with details
    echo -e "📄 Student ID: $STUDENT_ID\n👤 Name: $STUDENT_NAME\n🎓 Course: Computer Science\n📅 Semester: $SEMESTER" > "$SEMESTER/$STUDENT_NAME/info.txt"

    echo "✅ Student '$STUDENT_NAME' enrolled with ID: $STUDENT_ID"
done

echo "🎉 Enrollment process completed!"

