import Foundation

let input = try! String(contentsOfFile: "Input.txt")
	.split(separator: "\n")
	.compactMap { Int($0) }
	
func getExpenseReport(_ input: [Int]) -> Int? {
	for x in input {
		for y in input.dropFirst() {
			if x + y == 2020 {
				return x * y
			}
		}
	}
	
	return nil
}

print(getExpenseReport(input))