public class BinarySearchTree {

    private class Node{
        private int value;
        private float valuef;
        private Node leftChild;
        private Node rightChild;

  private Node(int value){
      this.value=value;

  }

        private Node(float value){
            this.valuef=valuef;

        }

        @Override
        public String toString() {
            return "node= " +value;
        }
    }
    private Node root;

    public void Insert(int value){
        if(root==null){
            root=new Node(value);
            return;
        }
Node current =root;
        while (true){
            if(value<=current.value){
                if(current.leftChild==null){
                    current.leftChild=new Node(value);
                    break;
                }
                current=current.leftChild;
            }
            else {
                if(current.rightChild==null){
                    current.rightChild=new Node(value);
                 break;
                }
                current=current.rightChild;
            }
        }
    }
    public boolean find(int value){
        Node current=root;
        while (current!=null){
            if(value<current.value)
                current=current.leftChild;
            else if(value>current.value)
                current=current.rightChild;
            else
                return true;
        }
        return false;
    }
    public void Insert(float valuef){
        if(root==null){
            root=new Node(valuef);
            return;
        }
        Node current =root;
        while (true){
            if(valuef<=current.valuef){
                if(current.leftChild==null){
                    current.leftChild=new Node(valuef);
                    break;
                }
                current=current.leftChild;
            }
            else {
                if(current.rightChild==null){
                    current.rightChild=new Node(valuef);
                    break;
                }
                current=current.rightChild;
            }
        }
    }
    public boolean find(float valuef){
        Node current=root;
        while (current!=null){
            if(valuef<current.valuef)
                current=current.leftChild;
            else if(valuef>current.valuef)
                current=current.rightChild;
            else
                return true;
        }
        return false;
    }
public void traversePreOrder(){
        traversePreOrder(root);
}

    private void traversePreOrder(Node root){
        if(root==null)
            return;
        System.out.print(root.value+" ");
        traversePreOrder(root.leftChild);
        traversePreOrder(root.rightChild);

    }
    public void traverseinOrder(){
        traverseinOrder(root);
    }
    private void traverseinOrder(Node root){
        if(root==null)
            return;

        traverseinOrder(root.leftChild);

        System.out.print(root.value+" ");

        traverseinOrder(root.rightChild);

    }
    public void traverseinOrderd(){
        traverseinOrderd(root);
    }
    private void traverseinOrderd(Node root){
        if(root==null)
            return;

        traverseinOrderd(root.rightChild);

        System.out.print(root.value+" ");

        traverseinOrderd(root.leftChild);

    }


}
