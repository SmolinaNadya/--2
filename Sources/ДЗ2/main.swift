import Foundation

var mnWords: [String: [String: String]] = 
["hello":["ru":"Привет","en":"Hello"],"day":["ru":"День","en":"Day","pt":"Dia"],"home":["ru":"Дом","en":"Home"]]
    var answer = false
    let arrayArguments = CommandLine.arguments
    if arrayArguments.count == 5
    {
        var k=""
        var l=""
        for i in 0..<arrayArguments.count
        {
            if arrayArguments[i] == "-k"
            {
               k = arrayArguments[i+1]
            }
            if arrayArguments[i] == "-l"
            {
               l = arrayArguments[i+1]
            }
            
        }
        Translate(k:k,l:l)
    }
    if arrayArguments.count == 3
    {
        for i in 0..<arrayArguments.count
        {
            if arrayArguments[i] == "-k"
            {
               let k = arrayArguments[i+1]
               Translate(k:k)
            }
            if arrayArguments[i] == "-l"
            {
               let l = arrayArguments[i+1]
               Translate(l:l)
            }
        }
    }
    if arrayArguments.count == 1
    {
        Translate()
    }
    if answer == false
    {
        print("Not found")
    }

func Translate(k:String,l:String)
{
 for (word, dictionary) in mnWords
 {
    if k == word
    {
        for (language, value) in dictionary
        {
            if l == language{
                print(value) 
                answer = true
            }
        }

    } 
 }
}
func Translate(l:String)
{
    for (_, dictionary) in mnWords
   {
        for (language, value) in dictionary
        {
            if l == language {
                print("\(language) = \(value)") 
                answer = true}
        }
   }
}

func Translate(k:String)
{
   for (word, dictionary) in mnWords
 {
    if k == word
    {
        for (language, value) in dictionary
        {
                print("\(language):\(value)")
                answer = true
           }
        }
   }
}
func Translate()
{
    for (word, dictionary) in mnWords
    {
      print(word)
        for (language, value) in dictionary
        {
          print("\(language):\(value)")
          answer = true
        }
    }
}
