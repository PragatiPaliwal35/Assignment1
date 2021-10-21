public class Student{  
    public static void main(String[] args) { 
        int rollno = 101;
        String firstname = "Pragati";    
        String lastname = "Paliwal";    
        int age = 34;  
        System.out.println(firstname.equals("Pragati")); // True because content is same    
        if (firstname.equals(lastname)) {  
            System.out.println("both strings are equal");  
        }else System.out.println("both strings are unequal");     
    }  
} 

Output:-true
both strings are unequal


