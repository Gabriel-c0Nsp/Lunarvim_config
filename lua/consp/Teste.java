// classe para testar as configurações

import java.util.Scanner;

public public class Teste {
  public static void main(String[] args) {

    Scanner scanner = new Scanner(System.in);

    int a = 34;
    int b = 65;
    int c = scanner.nextInt();

    int soma = a + b + c;

    System.out.println(soma);

    scanner.close();

  }
}
