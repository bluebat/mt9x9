/*
9x9 multiplication table in Java
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
*/
// javac mt9x9.java && java mt9x9

public class mt9x9 {
    public static void main(String args[]) {
        for(int i = 1; i <= 9; i += 3) {
            for(int j = 1; j <= 9; j++) {
                for(int k: new int[]{i, i+1, i+2})
                    System.out.printf("%dx%d=%2d\t", k, j, k*j);
                System.out.printf("\n");
            }
            System.out.println();
        }
    }
}
