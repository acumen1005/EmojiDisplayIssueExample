import UIKit

// 1. init
var issueEmoji = "🏻"
var smile = "😊"

// 2. print count
print("the count of issueEmoji: \(issueEmoji.utf16.count)")
print("the count of smile : \(smile.utf16.count)")

issueEmoji.insert("c", at: issueEmoji.startIndex)
issueEmoji.insert("b", at: issueEmoji.startIndex)
issueEmoji.insert("a", at: issueEmoji.startIndex)

print("after insert: \(issueEmoji), the count of issueEmoji: \(issueEmoji.utf16.count)")

//
let issueTextView = UITextView()
issueTextView.text = issueEmoji

// some issues are happened
issueTextView.deleteBackward()

/// the right print is "abc", but now the 'c' is deleted
/// for similar issue, you can't just select the emoji (the value of `issueEmoji`)
print("after delete: \(issueTextView.text!)")


/// normal case

smile.insert("c", at: smile.startIndex)
smile.insert("b", at: smile.startIndex)
smile.insert("a", at: smile.startIndex)

print("smile: \(smile)")

let smileTextView = UITextView()
smileTextView.text = smile

smileTextView.deleteBackward()

/// just delete 😊
print("after delete: \(smileTextView.text!)")

