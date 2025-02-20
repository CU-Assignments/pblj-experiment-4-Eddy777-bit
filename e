import java.util.*;

class Employee {
    int id;
    String name;
    double salary;
    public Employee(int id, String name, double salary) {
        this.id = id;
        this.name = name;
        this.salary = salary;
    }

    public void display() {
        System.out.println("ID: " + id + ", Name: " + name + ", Salary: $" + salary);
    }
}

public class SimpleEmployeeManager {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        List<Employee> employees = new ArrayList<>(); 

        while (true) {
            System.out.println("\n1. Add Employee");
            System.out.println("2. Remove Employee");
            System.out.println("3. Search Employee");
            System.out.println("4. Display All Employees");
            System.out.println("5. Exit");
            System.out.print("Enter your choice: ");
            int choice = sc.nextInt();

            if (choice == 1) { 
                System.out.print("Enter Employee ID: ");
                int id = sc.nextInt();
                sc.nextLine();
                System.out.print("Enter Name: ");
                String name = sc.nextLine();
                System.out.print("Enter Salary: ");
                double salary = sc.nextDouble();
                employees.add(new Employee(id, name, salary));
                System.out.println("Employee added!");
            } 
            else if (choice == 2) { 
                System.out.print("Enter Employee ID to remove: ");
                int id = sc.nextInt();
                employees.removeIf(emp -> emp.id == id);
                System.out.println("Employee removed!");
            } 
            else if (choice == 3) { 
                System.out.print("Enter Employee ID to search: ");
                int id = sc.nextInt();
                boolean found = false;
                for (Employee emp : employees) {
                    if (emp.id == id) {
                        emp.display();
                        found = true;
                        break;
                    }
                }
                if (!found) System.out.println("Employee not found!");
            } 
            else if (choice == 4) { 
                if (employees.isEmpty()) {
                    System.out.println("No employees available!");
                } else {
                    for (Employee emp : employees) {
                        emp.display();
                    }
                }
            } 
            else if (choice == 5) { 
                System.out.println("Exiting...");
                break;
            } 
            else {
                System.out.println("Invalid choice! Try again.");
            }
        }
    }
}
