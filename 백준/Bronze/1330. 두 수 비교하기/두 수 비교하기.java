import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int A=1, B=2;
        A=sc.nextInt();
        B=sc.nextInt();
        
        if(A<B){
            System.out.println("<");
        }else if(A>B){
            System.out.println(">");
        }else if(A==B){
            System.out.println("==");
        }
        sc.close();
    }
}