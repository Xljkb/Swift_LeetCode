let dic: [Character: Int] = ["I":1, "V":5, "X":10, "L": 50, "C":100, "D": 500, "M":1000]

let three = "III"
let aaa = "MCMXCIV"
let s = "XLVI"
var ans = 0
var arr = [Int]()
func romanTo(s: String) -> Int{    
    if s != nil{ 
        for i in s {
            
            if i != nil {
                arr.append(dic[i]!) 
            }
            
        }
      
        for i in 0..<(arr.count) {
            
            if (i != 0) {
                //print(i, arr[i], arr[i-1])
                if arr[i] <= arr[i-1]{
                    ans = arr[i] + ans
                }else{
                    ans = arr[i] - (arr[i-1]*2) + ans
                }                 
            }else{
                ans = arr[i]
            }
        }        
    }
    return ans
}

print(romanTo(s: s.uppercased()))
