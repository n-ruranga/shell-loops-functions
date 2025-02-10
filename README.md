# Student Enrollment Bash Script

This script automates the process of creating directories and files for students enrolling in a semester. It demonstrates the use of **C-style for loops**, **arrays**, **string formatting**, and **file handling** in Bash.

---

## Features
✅ Creates a **main semester directory** (e.g., `Spring-2025`).  
✅ Generates **subdirectories for each student** inside the semester directory.  
✅ Assigns a **unique Student ID** (formatted as `S2025001`, `S2025002`, etc.).  
✅ Creates an `info.txt` file containing **student details**.  
✅ Prints **confirmation messages** for each enrolled student.

---

## Script Code
```bash
#!/bin/bash

# Define semester name (e.g., Spring-2025)
SEMESTER="Spring-2025"

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
```

---

## Explanation of Key Concepts

### 1️⃣ Loop Control Variable: `i`
```bash
for ((i = 1; i <= ${#STUDENTS[@]}; i++))
```
- **C-style for loop** with `i` starting from `1`.
- `${#STUDENTS[@]}` returns the **length of the `STUDENTS` array**.
- The loop runs from `1` to the number of students.

### 2️⃣ Accessing Array Elements: `STUDENT_NAME=${STUDENTS[i-1]}`
```bash
STUDENT_NAME=${STUDENTS[i-1]}
```
- `${STUDENTS[i-1]}` accesses the element at index `i-1` (arrays are **0-indexed**).
- Example:
  - `i=1` → `STUDENTS[0] = "Alice"`
  - `i=2` → `STUDENTS[1] = "Bob"`

### 3️⃣ Generating Unique Student ID: `STUDENT_ID="S2025$(printf "%03d" $i)"`
```bash
STUDENT_ID="S2025$(printf "%03d" $i)"
```
- `printf "%03d" $i` formats `i` as a **zero-padded 3-digit number**.
- Example output:
  - `i=1` → `S2025001`
  - `i=2` → `S2025002`

### 4️⃣ Creating Directories Using Variables
```bash
mkdir -p "$SEMESTER/$STUDENT_NAME"
```
- Expands to: `mkdir -p "Spring-2025/Alice"` (creates student directories).

### 5️⃣ Writing to Files Using Variables
```bash
echo -e "📄 Student ID: $STUDENT_ID\n👤 Name: $STUDENT_NAME\n🎓 Course: Computer Science\n📅 Semester: $SEMESTER" > "$SEMESTER/$STUDENT_NAME/info.txt"
```
- `-e` enables **newlines** (`\n`).
- Stores student details inside `info.txt`.

✅ **Example File Content (`Alice/info.txt`)**:
```
📄 Student ID: S2025001
👤 Name: Alice
🎓 Course: Computer Science
📅 Semester: Spring-2025
```

### 6️⃣ Printing Enrollment Confirmation
```bash
echo "✅ Student '$STUDENT_NAME' enrolled with ID: $STUDENT_ID"
```
- Displays a success message for each enrolled student.

✅ **Example Output:**
```
✅ Student 'Alice' enrolled with ID: S2025001
✅ Student 'Bob' enrolled with ID: S2025002
🎉 Enrollment process completed!
```

---

## How to Run the Script
1. Save the script as `enroll_students.sh`.
2. Give it execution permission:
   ```sh
   chmod +x enroll_students.sh
   ```
3. Run it:
   ```sh
   ./enroll_students.sh
   ```

---

## Verifying the Output
To check the created directory structure:
```sh
tree Spring-2025/
```
Expected output:
```
Spring-2025/
├── Alice/
│   ├── info.txt
├── Bob/
│   ├── info.txt
├── Charlie/
│   ├── info.txt
...
```

---

## Key Bash Syntax Used
| Syntax | Meaning |
|--------|---------|
| `${VAR}` | Expands the value of `VAR` |
| `${#ARRAY[@]}` | Gets the **length** of an array |
| `${ARRAY[i]}` | Accesses the **i-th element** of an array |
| `$(COMMAND)` | Runs `COMMAND` and substitutes the output |
| `printf "%03d" $i` | Formats numbers as **zero-padded 3-digit** |
| `mkdir -p "$VAR"` | Creates a directory using a **variable** |
| `echo -e "Text\nNewLine"` | Enables **newline formatting** |



--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
