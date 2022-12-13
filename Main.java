public class Main {

    public static void main(String[] args) {
BinarySearchTree binarySearchTree=new BinarySearchTree();
          binarySearchTree.Insert(7);
        binarySearchTree.Insert(4);
        binarySearchTree.Insert(9);
        binarySearchTree.Insert(1);
        binarySearchTree.Insert(6);
        binarySearchTree.Insert(8);
        binarySearchTree.Insert(10);
       /* binarySearchTree.Insert(1f);
        binarySearchTree.Insert(0.2f);*/
       boolean result= binarySearchTree.find(4);
   if(result)
       System.out.println("found");
   else{
       System.out.println("not");}
        boolean esult= binarySearchTree.find(1f);
        if(esult)
            System.out.println("found");
        else{
            System.out.println("not");}
        System.out.println("done");

        binarySearchTree.traversePreOrder();
        System.out.println("\n");
        binarySearchTree.traverseinOrder();
        System.out.println("\n");
        binarySearchTree.traverseinOrderd();
    }

}
