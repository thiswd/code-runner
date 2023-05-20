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
