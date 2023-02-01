import java.util.Scanner;

public class Demo3 {
    public static void main(String[] args) {
        String str1 = "Enter 1st an integer: ";
        String str2 = "Enter 2nd an integer: ";
        String str3 = "The result of add two integers is ";

        Scanner scan = new Scanner(System.in);
        System.out.print(str1);
        int x = Integer.parseInt(scan.nextLine());

        System.out.print(str2);
        int y = Integer.parseInt(scan.nextLine());

        int z = x + y;

        System.out.print(str3);
        System.out.print(z);

    }
}
