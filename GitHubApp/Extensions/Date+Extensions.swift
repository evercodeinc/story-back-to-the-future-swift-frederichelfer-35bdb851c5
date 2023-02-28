import Foundation

extension Date {
    
    static func format(dateString: String) -> String? {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        let date = dateFormatter.date(from: dateString)
        
        if let date {
            dateFormatter.dateFormat = "dd/MM/yyyy"
            return dateFormatter.string(from: date)
        }
        
        return nil
    }
    
    func travelToFuture(years: Int) -> String? {
        let currentDate = self
        
        var dateComponents = DateComponents()
        dateComponents.year = years
        
        let futureDate = Calendar.current.date(byAdding: dateComponents, to: currentDate)
     
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        if let futureDate {
            return dateFormatter.string(from: futureDate)
        }
        
        return nil
    }
}
