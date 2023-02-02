import java.util.Scanner;

public class Demo3 {
    public static void main(String[] args) {
        String str1 = "Enter 1st number: ";
        String str2 = "Enter 2nd number: ";
        String str3 = "Result of adding to numbers is ";

        int x, y, z;
        Scanner scan = new Scanner(System.in);

        System.out.print(str1);
        x = Integer.parseInt(scan.nextLine());

        System.out.print(str2);
        y = Integer.parseInt(scan.nextLine());

        z = x + y;

        System.out.print(str3);
        System.out.print(z);
    }
}
