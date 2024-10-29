import SwiftUI

extension Date {
    var monthStart: Date {
        Calendar.current.dateInterval(of: .month, for: self)!.start
    }
    
    var monthEnd: Date {
        let lastDay = Calendar.current.dateInterval(of: .month, for: self)!.end
        return Calendar.current.date(byAdding: .day, value: -1, to: lastDay)!
    }
    
    var prevMonthStart: Date {
        let prevMonth = Calendar.current.date(byAdding: .month, value: -1, to: self)!
        return prevMonth.monthStart
    }
    
    var monthDays: Int {
        Calendar.current.component(.day, from: monthEnd)
    }
    
    var sundayBeforeMonth: Date {
        let startofMonth = Calendar.current.component(.weekday, from: monthStart)
        var prevMonth = startofMonth - 1
        if prevMonth < 0 {
            prevMonth += 7
        }
        return Calendar.current.date(byAdding: .day, value: -prevMonth, to: monthStart)!
    }
    
    
    var calendarDays: [Date] {
        var days: [Date] = []
        for offset in 0..<monthDays {
            let newDay = Calendar.current.date(byAdding: .day,value: offset, to: monthStart)
            days.append(newDay!)
        }
        
        for offset in 0..<prevMonthStart.monthDays {
            let newDay = Calendar.current.date(byAdding: .day,value: offset, to: prevMonthStart)!
            if newDay >= sundayBeforeMonth {
                days.append(newDay)
            }
        }
        for offset in 0..<42-days.count {
            let nextMonth = Calendar.current.date(byAdding: .month, value: 1, to: monthStart)!
            let newDay = Calendar.current.date(byAdding: .day,value: offset, to: nextMonth)
            days.append(newDay!)
        }
        
        return days.sorted(by: <)
    }
    
    var monthInt: Int {
        Calendar.current.component(.month, from: self)
    }
    
    var dayStart: Date {
           Calendar.current.startOfDay(for: self)
       }
}
