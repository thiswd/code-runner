# https://leetcode.com/problems/linked-list-cycle/

# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val)
#     @val = val
#     @next = nil
#   end
# end

def has_cycle(head)
  return false if head.nil? || head.next.nil?

  slow = head
  fast = head.next

  while slow != fast
    return false if fast.nil? || fast.next.nil?

    slow = slow.next
    fast = fast.next.next
  end

  true
end
