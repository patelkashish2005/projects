import mysql.connector
from mysql.connector import Error

class StudentManagementSystem:
    def __init__(self):
        # Establish MySQL database connection
        try:
            self.connection = mysql.connector.connect(
                host='localhost',          # Change this to your MySQL server host
                database='student_management_system',
                user='root',               # Your MySQL username
                password='bc@73'        # Your MySQL password
            )
            if self.connection.is_connected():
                print("Connected to MySQL database")
        except Error as e:
            print(f"Error: {e}")
            self.connection = None

    def add_student(self, first_name, last_name, age, gender, grade):
        """Add a new student."""
        if self.connection:
            try:
                cursor = self.connection.cursor()
                cursor.execute("INSERT INTO students (first_name, last_name, age, gender, grade) "
                               "VALUES (%s, %s, %s, %s, %s)", (first_name, last_name, age, gender, grade))
                self.connection.commit()
                print(f"Student {first_name} {last_name} added successfully.")
            except Error as e:
                print(f"Error while adding student: {e}")

    def view_student(self, student_id):
        """View a student record by student_id."""
        if self.connection:
            try:
                cursor = self.connection.cursor(dictionary=True)
                cursor.execute("SELECT * FROM students WHERE student_id = %s", (student_id,))
                student = cursor.fetchone()
                if student:
                    print(f"Student ID: {student['student_id']}")
                    print(f"First Name: {student['first_name']}")
                    print(f"Last Name: {student['last_name']}")
                    print(f"Age: {student['age']}")
                    print(f"Gender: {student['gender']}")
                    print(f"Grade: {student['grade']}")
                else:
                    print(f"Student with ID {student_id} not found.")
            except Error as e:
                print(f"Error while retrieving student: {e}")

    def update_student(self, student_id, first_name=None, last_name=None, age=None, gender=None, grade=None):
        """Update student details."""
        if self.connection:
            try:
                cursor = self.connection.cursor()
                update_fields = []
                update_values = []

                if first_name:
                    update_fields.append("first_name = %s")
                    update_values.append(first_name)
                if last_name:
                    update_fields.append("last_name = %s")
                    update_values.append(last_name)
                if age:
                    update_fields.append("age = %s")
                    update_values.append(age)
                if gender:
                    update_fields.append("gender = %s")
                    update_values.append(gender)
                if grade:
                    update_fields.append("grade = %s")
                    update_values.append(grade)

                if update_fields:
                    update_values.append(student_id)
                    update_query = f"UPDATE students SET {', '.join(update_fields)} WHERE student_id = %s"
                    cursor.execute(update_query, tuple(update_values))
                    self.connection.commit()
                    print(f"Student {student_id} updated successfully.")
                else:
                    print("No data to update.")
            except Error as e:
                print(f"Error while updating student: {e}")

    def delete_student(self, student_id):
        """Delete a student record."""
        if self.connection:
            try:
                cursor = self.connection.cursor()
                cursor.execute("DELETE FROM students WHERE student_id = %s", (student_id,))
                self.connection.commit()
                print(f"Student {student_id} deleted successfully.")
            except Error as e:
                print(f"Error while deleting student: {e}")

    def list_all_students(self):
        """List all students."""
        if self.connection:
            try:
                cursor = self.connection.cursor(dictionary=True)
                cursor.execute("SELECT * FROM students")
                students = cursor.fetchall()
                if students:
                    print("\nListing all students:")
                    for student in students:
                        print(f"ID: {student['student_id']}, Name: {student['first_name']} {student['last_name']}, "
                              f"Age: {student['age']}, Gender: {student['gender']}, Grade: {student['grade']}")
                else:
                    print("No students found.")
            except Error as e:
                print(f"Error while listing students: {e}")

    def close_connection(self):
        """Close the database connection."""
        if self.connection and self.connection.is_connected():
            self.connection.close()
            print("MySQL connection closed.")

def get_input(prompt):
    """Helper function to safely get user input."""
    return input(prompt)

def main():
    student_system = StudentManagementSystem()

    while True:
        print("\nStudent Management System")
        print("1. Add Student")
        print("2. View Student")
        print("3. Update Student")
        print("4. Delete Student")
        print("5. List All Students")
        print("6. Exit")

        choice = input("Enter your choice: ")

        if choice == "1":
            first_name = get_input("Enter first name: ")
            last_name = get_input("Enter last name: ")
            age = int(get_input("Enter age: "))
            gender = get_input("Enter gender (e.g., Male, Female): ")
            grade = get_input("Enter grade: ")
            student_system.add_student(first_name, last_name, age, gender, grade)

        elif choice == "2":
            student_id = int(get_input("Enter student ID to view: "))
            student_system.view_student(student_id)

        elif choice == "3":
            student_id = int(get_input("Enter student ID to update: "))
            print("Leave a field blank if you don't want to update it.")
            first_name = get_input("Enter new first name (leave blank to keep current): ") or None
            last_name = get_input("Enter new last name (leave blank to keep current): ") or None
            age = get_input("Enter new age (leave blank to keep current): ")
            age = int(age) if age else None
            gender = get_input("Enter new gender (leave blank to keep current): ") or None
            grade = get_input("Enter new grade (leave blank to keep current): ") or None
            student_system.update_student(student_id, first_name, last_name, age, gender, grade)

        elif choice == "4":
            student_id = int(get_input("Enter student ID to delete: "))
            student_system.delete_student(student_id)

        elif choice == "5":
            student_system.list_all_students()

        elif choice == "6":
            student_system.close_connection()
            print("Goodbye!")
            break

        else:
            print("Invalid choice! Please select a valid option.")

if __name__ == "__main__":
    main()
