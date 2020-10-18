import Foundation
class Word {
    var name:String
    var wordOflanguage = [String: String]()
    
    init(name:String,wordOflanguage:[String: String]) {
    self.name = name
    self.wordOflanguage = wordOflanguage
  }
}
let Word1 = Word(name:"hello",wordOflanguage:["ru":"Привет","en":"Hello"])
let Word2 = Word(name:"day",wordOflanguage:["ru":"День","en":"Day","pt":"Dia"])

var words = [Word]()
words.append(Word1)
words.append(Word2)

guard let k = readLine() else
{
    exit(0)}
guard let l = readLine() else {
    exit(0)}

    if k != "" && l != ""
{
    Translate(k:k,l:l)
}
else 
{
    if k == "" && l != ""
   {
    Translate(l:l)
   }
   else if k != "" && l == ""
   {
       Translate(k:k)
   }
   else if k == "" && l == ""
   {
       Translate()
   }
}

func Translate(k:String,l:String)
{
for word in words
 {
    if k == word.name
    {
        for (key, value) in word.wordOflanguage
        {
            if l == key{
                print(value)
            }
        }

    } 
 }
}
func Translate(l:String)
{
    for word in words
 {
    for (key, value) in word.wordOflanguage
        {
            if l == key {
                print("\(key) = \(value)") }
        }
 }
}

func Translate(k:String)
{
    for word in words
 {
    if k == word.name
    {
        for (key, value) in word.wordOflanguage
        {
                print("\(key):\(value)")
        }
    }
 }
}
func Translate()
{
    for word in words
 {
    print(word.name)
        for (key, value) in word.wordOflanguage
        {
                print("\(key):\(value)")
        }
 }
}
