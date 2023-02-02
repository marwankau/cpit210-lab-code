import java.util.Scanner;

public class Demo6 {
    public static void main(String[] args) {
        String str1 = "Enter how many number: ";
        String str2 = "Enter number #";
        String str3 = "Total: ";
        String str4 = "Average: ";
        int x;
        int sum = 0;
        int c = 0;
        int n;
        int avg;
        Scanner scan = new Scanner(System.in);

        System.out.print(str1);
        n = Integer.parseInt(scan.nextLine());

        while (c < n) {
            c++;

            System.out.print(str2);
            System.out.print(c);
            System.out.print(' ');
            x = Integer.parseInt(scan.nextLine());

            sum += x;
        }

        System.out.print(str3);
        System.out.print(sum);

        avg = sum / n;
        System.out.print(str4);
        System.out.print(avg);
    }
}
