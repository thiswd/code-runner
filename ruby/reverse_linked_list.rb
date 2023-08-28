# https://leetcode.com/problems/reverse-linked-list/

def reverse_list(head)
  prev = nil
  while head do
    nxt = head.next
    head.next = prev
    prev = head
    head = nxt
  end
  prev
end

def reverse_list(head, prev = nil)
  return prev unless head

  next_node = head.next
  head.next = prev

  reverse_list(next_node, head)
end
