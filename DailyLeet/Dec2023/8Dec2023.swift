//
//  8Dec2023.swift
//  DailyLeet
//
//  Created by Kshitij Singh Chauhan on 08/12/23.
//

// MARK: - https://leetcode.com/problems/construct-string-from-binary-tree/description/

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
 
class ConstructStringFromBinaryTree {
    func tree2str(_ root: TreeNode?) -> String {
        var value: String = "\(root?.val ?? 0)"
        if root?.left == nil && root?.right == nil {
            return value
        } else {
            if root?.left != nil {
                value += "(" + tree2str(root?.left) + ")"
            } else if root?.right != nil {
                value += "()"
            }
            if root?.right != nil {
                value += "(" + tree2str(root?.right) + ")"
            }
            return value
        }
    }
}
