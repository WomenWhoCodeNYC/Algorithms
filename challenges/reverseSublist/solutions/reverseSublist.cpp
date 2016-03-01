
/************************************
 	Aksana Kuzmitskaya
	aksana.kuzmitskaya@gmail.com
************************************/

#include <iostream>
#include <memory>
 
using namespace std;
struct ListNode {
  int data ;
  shared_ptr<ListNode> next ;
  ListNode( ) { }
  ListNode( int value ) : data( value ) { }
};
 
void InsertListNode( shared_ptr<ListNode> list, int value ) { 
  shared_ptr<ListNode> new_node( new ListNode( value ) );
  while ( list->next != nullptr ) {
    list = list->next ;   
  }
  list->next = new_node ;
} 

shared_ptr<ListNode> reverse( shared_ptr<ListNode> & list ) {
    shared_ptr<ListNode> prev = nullptr, curr = list ;
    while ( curr ) {
        auto temp = curr->next ;
        curr->next = prev ;
        prev = curr ;
        curr = temp ;
    }
    return prev ;
}

shared_ptr<ListNode> reverseKNodes( shared_ptr<ListNode> & list, const int k ) {
	auto head = list, temp = list ;
	int count = 1 ;
	while ( temp->next && count < k ) {
	    ++count ;
	    temp = temp->next ;
	}
	auto second_head = temp->next ;
	temp->next = nullptr ;
	auto beginning = reverse( head ) ;
	head->next = second_head ;
	return  beginning ;
}

int main() {
  shared_ptr<ListNode> head(new ListNode(5));
  InsertListNode(head, 4);
  InsertListNode(head, 3);
  InsertListNode(head, 2);
  InsertListNode(head, 1);
  InsertListNode(head, 0);
  auto test = reverseKNodes(head, 2);
  while ( test ) {
    cout << test->data << " ";
    test = test->next;
  } 
    cout << endl;
}
