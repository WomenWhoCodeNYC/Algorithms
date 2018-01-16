/* 
 * This solution uses "handmade" nodes rather than the LinkedList object.
 * Nodes are given integer values from 1 to n in order to simplify checking the solution.
 * To use this, instantiate ReverseLLK and then call run(n, k) with whatever integer values you like.
 */

class ReverseLLK {
  class PatNode {
    var value: Integer = null
    var next: PatNode = null

    override def toString: String = value.toString
  }

  object PatNode {
    def apply(v: Integer, n: PatNode = null): PatNode = {
      val pn = new PatNode
      pn.value = v
      pn.next = n
      pn
    }
  }

  def reverse(head: PatNode): PatNode = {
    var prev: PatNode = null
    var cur = head
    var nex = head.next

    while (cur != null) {
      cur.next = prev
      prev = cur
      cur = nex
      if (nex != null && cur != null) {
        nex = cur.next
      }
    }

    prev
  }

  def run(total: Int, k: Int): Unit = {
    var i = 1

    var head: PatNode = PatNode(i)  // We will need this reference later
    var node = head
    i+=1

    // Start out with a list of n nodes in numerical order by value  
    while (i < total) {
      node.next = PatNode(i)
      node = node.next
      i+=1
    }

    printList(head)

    /* 
     * The strategy here is to keep pointers to the nodes before and after the sublist
     * that will be reversed, so that we can put the list back together post-reversal.
     * Then we walk through the list, reversing a sublist every time we've got k elements.
     */
    
    // At first, we make a temporary null-valued node as a placeholder.
    var prior: PatNode = PatNode(null, head)
    var after: PatNode = null
    node = head
    i = 1
    while (i < total) {
      if (i % k == 0) {
        after = node.next
        node.next = null
        prior.next = reverse(prior.next)
        node = prior.next
        if (prior.value == null) {
          head = node
        }
        while(node.next != null) {
          node = node.next
        }
        node.next = after
        prior = node
        node = after
      } else {
        node = node.next
      }
      i+=1
    }

    printList(head)
  }

  def printList(head: PatNode): Unit = {
    var node = head

      while(node != null) {
      System.out.print(node + " ")
      node = node.next
    }
    System.out.println()
  }
}
