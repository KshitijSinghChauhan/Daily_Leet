//
//  9Dec2023.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 09/12/23.
//

import Foundation

public class TreeNode1 {
    public var val: Int
    public var left: TreeNode1?
    public var right: TreeNode1?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode1?, _ right: TreeNode1?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
 
class BinaryTreeInorderTraversal {
    func inorderTraversal(_ root: TreeNode1?) -> [Int] {
        var value: [Int] = []
        if root?.val == nil {
            return value
        } else {
            value.append(contentsOf: inorderTraversal(root?.left))
            value.append(root?.val ?? 0)
            value.append(contentsOf: inorderTraversal(root?.right))
            return value
        }
    }
}
