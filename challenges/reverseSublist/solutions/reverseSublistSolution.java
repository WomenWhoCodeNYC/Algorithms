import java.util.Iterator;
import java.util.LinkedList;
       

public class Main {

    public static void main(String[] args) {
        LinkedList<Object> testList = new LinkedList<>();
        Integer[] testIntObjs = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
        for (Integer i : testIntObjs) {
            testList.add(i);
        }
        
        reverseSublist(5, testList);
    }

    public static LinkedList<Object> reverseSublist(int k, LinkedList<Object> l) {
        int group = l.size() / k;
        int mod = l.size() % k;
        int g = 1;
        int startEnd = (l.size() - mod) - k;
        LinkedList<Object> temp = new LinkedList();
        int m = 0;
        if (k < l.size()) {
            while (m < mod) {
                temp.addFirst(l.pollLast());
                m++;
            }
            while (g <= group) {
                Iterator node = l.iterator();
                Object pointer;
                int s = 0;

                while (s < startEnd) {
                    pointer = node.next();
                    s++;
                }
                startEnd -= k;

                int counter = 0;
                while (counter < k) {
                    pointer = node.next();
                    temp.addFirst(pointer);
                    counter++;
                }
                g++;
            }
        }else{
            for (int i=0; i < l.size(); i++) {
                temp.add(l.pollLast());
                l.addFirst(temp.getLast());
            }
        }
        System.out.println(temp);
        return temp;
    }
}



 /*This problem entails reversing sublists of a given singly
        linked list k at a time. Write a function which takes
        as input a singly linked list L and a nonnegative integer k,
        and reverses the least k nodes at a time. If the number of nodes
        n in the list is not multiply of k, leave the last n mod k nodes
        unchanged. Do not change the data stored within a node.*/