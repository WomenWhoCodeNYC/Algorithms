#include <iostream>
#include <string>

using namespace std;
/*
WomenWhoCodeNYC July 2018 challenges
partition list
nodes smaller than 3 come before nodes greater of equal to 3 original relative order is prserved

test cases:
3
6
1 4 3 2 5 2

output:
1 2 2 4 3 5

try when first element is greater or equal than 3
3
6
4 1 3 2 5 2

output:
1 2 2 4 3 5
*/
class SinglyLinkedListNode {
public:
	int data;
	SinglyLinkedListNode *next;

	SinglyLinkedListNode(int node_data) {
		this->data = node_data;
		this->next = nullptr;
	}
};

class SinglyLinkedList {
public:
	SinglyLinkedListNode * head;
	SinglyLinkedListNode *tail;

	SinglyLinkedList() {
		this->head = nullptr;
		this->tail = nullptr;
	}

	void insert_node(int node_data) {
		SinglyLinkedListNode* node = new SinglyLinkedListNode(node_data);

		if (!this->head) {
			this->head = node;
		}
		else {
			this->tail->next = node;
		}

		this->tail = node;
	}

	/*
	keep track of begining and end of 2nd half 
	*/
	SinglyLinkedListNode * partition(SinglyLinkedListNode *head, int x)
	{
		SinglyLinkedListNode *it1 = nullptr, *it2 = nullptr;
		SinglyLinkedListNode *it1_prev = nullptr, *it2_prev = nullptr;
		SinglyLinkedListNode *node = head;
		int it1dist = 0, it2dist = 0;
		int itdist = 1;
		bool first_it2 = false;
		while (node != nullptr)
		{
			if (node->data < x)
			{
				it1_prev = it1;
				it1 = node;
				it1dist = itdist;
			}
			else
			{
				if (first_it2 == false)
				{
					it2_prev = node;
					it2 = node;
					it2dist = itdist;
					first_it2 = true;
				}
				else
				{
					it2 = node;
				}
			}

			if ((it1dist>0) && (it2dist>0) && (it1dist > it2dist))
			{// current element is out of place so needs to move backwards
				it2->next = it1->next;
				if (it1_prev)
					it1_prev->next = it1;
				else				
					head = it1;
				
				it1->next = it2_prev;
				 
				it1dist = it2dist;
				it2dist++;

				node = it2->next;
			}
			else
				node = node->next;
			itdist++;
		}
		return head;
	}
	
};


void print_singly_linked_list(SinglyLinkedListNode* node, string sep, ostream& fout) {
	while (node) {
		fout << node->data;

		node = node->next;

		if (node) {
			fout << sep;
		}
	}
}

void free_singly_linked_list(SinglyLinkedListNode* node) {
	while (node) {
		SinglyLinkedListNode* temp = node;
		node = node->next;

		free(temp);
	}
}

int main()
{
	int partition_val;
	cin >> partition_val;

	SinglyLinkedList* llist = new SinglyLinkedList();
	int llist_count;
	cin >> llist_count;
	for (int i = 0; i < llist_count; i++) {
		int llist_item;
		cin >> llist_item;
		llist->insert_node(llist_item);
	}
	SinglyLinkedListNode *head =  llist->partition(llist->head, partition_val);
	print_singly_linked_list(head, " ", cout);

	if (llist)
		free_singly_linked_list(llist->head);
}


