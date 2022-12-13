import java.util.Arrays;

public class Main {

    public static void main(String[] args) {

     quickSort quickSort=new quickSort();
     int[] unsorted={0,1,4,5,2,3};
     char[] un={'a','z','d','e','y'};
     float[] u={1f,4.2f,0.2f,0.7f};
     quickSort.sort(un,0,un.length-1);
        System.out.println(Arrays.toString(un));
        quickSort.sort(un,0,un.length-1);
        System.out.println(Arrays.toString(u));

     quickSort.sort(unsorted,0,unsorted.length-1);
        System.out.println(Arrays.toString(unsorted));

    }
}
