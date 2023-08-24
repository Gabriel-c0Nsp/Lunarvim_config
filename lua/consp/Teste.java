import java.util.Scanner;

public class Teste {
  public static void main(String[] args) {

    Scanner scanner = new Scanner(System.in);

    int a = scanner.nextInt();
    int b = scanner.nextInt();
    int c = scanner.nextInt();

    int soma = a + b + c;

    System.out.println(soma);

    scanner.close();
  }
}
