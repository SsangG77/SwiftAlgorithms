//
//  ReverseKGroup.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 6/7/25.
//

import Foundation

func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
    guard let head = head, k > 1 else { return head }

    let dummy = ListNode(0)
    dummy.next = head
    var groupPrev: ListNode? = dummy

    while true {
        var kth = groupPrev
        for _ in 0..<k {
            kth = kth?.next
            if kth == nil { return dummy.next }
        }

        let groupNext = kth?.next
        var prev = groupNext
        var curr = groupPrev?.next

        while curr !== groupNext {
            let tmp = curr?.next
            curr?.next = prev
            prev = curr
            curr = tmp
        }

        let tmp = groupPrev?.next
        groupPrev?.next = kth
        groupPrev = tmp
    }
}

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil }
    public init(_ val: Int) { self.val = val; self.next = nil }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}

