import Foundation

extension Date {
    
    static func format(dateString: String) -> String? {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        let date = dateFormatter.date(from: dateString)
        
        if let date {
            dateFormatter.dateStyle = .short
            return dateFormatter.string(from: date)
        }
        
        return nil
    }
    
    func travelToFuture(years: Int) -> String? {
     
        // TODO
        return nil
    }
}
