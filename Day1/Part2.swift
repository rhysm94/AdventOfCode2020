import Foundation

let input = try! String(contentsOfFile: "Input.txt")
	.split(separator: "\n")
	.compactMap { Int($0) }
	
func getExpenseReport(_ input: [Int]) -> Int? {
	for x in input {
		for y in input.dropFirst() {
			for z in input.dropFirst(2) {
				if x + y + z == 2020 {
					return x * y * z
				}
			}
		}
	}
	
	return nil
}

print(getExpenseReport(input))