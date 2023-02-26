var divisor: Int
var nums = [Int]() // non-empty array
var max = nums.max()!
var min = nums.min()!
if nums.max()! % nums.min()! == 0{
    divisor = nums.max()! / nums.min()!
}

func findGCD(_ nums: [Int]) -> Int {
        var divisor = 1
        var d = max % min

            while max != 0, min != 0{
                if max > min{
                    max = max - min
                }else{
                    min = min - max
                }
            }
            divisor = min + max
        
        print(divisor)
        return divisor
    }
findGCD(nums)
