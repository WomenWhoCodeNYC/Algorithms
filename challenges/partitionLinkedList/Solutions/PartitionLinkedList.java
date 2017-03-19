package wwc;

/**
 * Given a linked list and a value x, partition it such that all nodes less than x come before nodes greater than or equal to x.
 * 
 *For example,
 *Given 1->4->3->2->5->2 and x = 3,
 *return 1->2->2->4->3->5. 
 *
 *@author Cintia F. Kasziba
 */
public class PartitionLinkedList {
	
	public static void main(String... args) {
		ListNode head = createList(1,4,3,2,5,2);
		printList(head);
		printList(partition(head, 3));
	}
	
	private static ListNode partition(ListNode head, int x) {
		
		ListNode lessThanList = null;
		ListNode greatherThanEqualList = null;
		ListNode cursor = head;
		ListNode lessThanTail = null;
		ListNode greatherThanTail = null;
		ListNode greatherThanEqualListHead = null;
		
		
		while(cursor != null) {
			if(cursor != null && cursor.val < x) {
				
				if(lessThanList == null) {
					lessThanList = cursor;
					lessThanTail = cursor;
				} else {
					lessThanTail.next = cursor;
					lessThanTail = cursor;
				}
				cursor = cursor.next;
				while(cursor != null && cursor.val < x) {
					lessThanTail = cursor;
					cursor = cursor.next;
				}
			}
			
			if(cursor != null && cursor.val >= x) {
				
				if(greatherThanEqualList == null) {
					greatherThanEqualList = cursor;
					greatherThanEqualListHead = cursor;
					greatherThanTail = cursor;
				} else {
					greatherThanTail.next = cursor;
					greatherThanTail = cursor;
				}
				cursor = cursor.next;
				while(cursor != null && cursor.val >= x) {
					greatherThanTail = cursor;
					cursor = cursor.next;
				}
			}
		}
		
		if(lessThanTail != null) {
			lessThanTail.next = greatherThanEqualListHead;
		}
		
		if(greatherThanEqualList != null) {
			greatherThanTail.next = null;
		}
		return head;
	}
	
	private static ListNode createList(int... elements) {
		if(elements.length == 0) {
			return null;
		}
		ListNode head = new ListNode(elements[0]);
		ListNode first = head;
		for(int i = 1; i < elements.length; i++) {
			head.next = new ListNode(elements[i]);
			head = head.next;
		}
		return first;
	}
	
	private static void printList(ListNode head) {
		ListNode cursor = head;
		while(cursor != null) {
			System.out.print(cursor.val + ", ");
			cursor = cursor.next;
		}
		System.out.println("");
	}
	
	private static class ListNode {
		int val;
		ListNode next;
		
		ListNode(int val) {
			this.val = val;
		}
	}
}
