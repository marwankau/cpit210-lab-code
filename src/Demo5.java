import java.util.Scanner;

public class Demo5 {
    public static void main(String[] args) {
        String str1 = "Enter an integer: ";
        String str_even = " is even";
        String str_odd = " is odd";
        String str_zero = " is zero";
        int x;

        Scanner scan = new Scanner(System.in);
        
        System.out.print(str1);
        x = Integer.parseInt(scan.nextLine());

        if (x == 0) {
            System.out.print(x);
            System.out.print(str_zero);
        } else if (x % 2 == 0) {
            System.out.print(x);
            System.out.print(str_even);
        } else {
            System.out.print(x);
            System.out.print(str_odd);
        }


    }
}
