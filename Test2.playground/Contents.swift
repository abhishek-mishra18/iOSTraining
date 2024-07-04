import Foundation

enum UserType{
    case regular
    case premium
}

struct User{
    var name:String
    var id:Int
    var type:UserType
}

var testArray=[User(name: "Abhishek", id: 1, type: .premium),
               User(name: "Baibhav", id: 2, type: .regular),
               User(name: "Arman", id: 3, type: .premium),
               User(name:"Pratyush", id: 4, type: .premium),
               User(name: "Narendran", id: 5, type: .regular)]

// 1.Filtering out regular users

// Naive Approach

var filteredResult:[User]=[]
for users in testArray{
    if(users.type == .regular){
        filteredResult.append(users)
    }
}
print(filteredResult)

// using higher order functions

var filteredResultHigher=testArray.filter{$0.type == .regular}
print(filteredResultHigher)

// higher order functions to count regular users

var regularUserCount:Int = filteredResultHigher.count

// print regular and premium users using for loop

for user in testArray{
    switch user.type{
        
    case .regular:
        print("\(user.name) is a regular user")
    case .premium:
        print("\(user.name) is a premium user")
    }
}

// extract names of all users

var userNames:[String]=[]

for user in testArray{
    userNames.append(user.name)
}
print(userNames)

// using flatmap higher order function

var userName = testArray.map{[$0.name]}.flatMap{$0}
print(userName)

// sorting using sorted function

let sortedUsers=testArray.sorted{$0.name<$1.name}
print(sortedUsers)

