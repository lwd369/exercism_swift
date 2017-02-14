//Solution goes in Sources
import Foundation

struct Gigasecond {
    var from: String
    var date: Date
    let GIGASECOND = 100_000_000_0
    var description: String {
        let result = self.date.addingTimeInterval(TimeInterval(GIGASECOND))
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        return formatter.string(from: result)
    }
    
    init?(from: String) {
        self.from = from
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        let date = formatter.date(from: from)
        if let date = date {
            self.date = date
        } else {
            return nil
        }
    }
}
