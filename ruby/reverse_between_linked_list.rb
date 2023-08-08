# https://leetcode.com/problems/reverse-linked-list-ii/

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end
end

# dummy->3->1->5->2->4

def reverse_between(head, left, right)
  return head if left == right

  dummy = ListNode.new(0)
  dummy.next = head
  prev = dummy

  (left - 1).times do
    prev = prev.next
  end

  current = prev.next

  (right - left).times do
    temp = prev.next
    prev.next = current.next
    current.next = current.next.next
    prev.next.next = temp
  end

  dummy.next
end
