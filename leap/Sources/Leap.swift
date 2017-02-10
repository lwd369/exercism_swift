//Solution goes in Sources
class Year {
    var year: Int!
    var isLeapYear: Bool {
        if year % 4 == 0 || year % 400 == 0{
            if year % 400 == 0 {
                return true
            }
            if year % 100 == 0 {
                return false
            }
            return true
        }
        return false
    }
    init(calendarYear: Int) {
        self.year = calendarYear
    }
}
