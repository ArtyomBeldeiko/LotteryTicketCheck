func checkLotteryTicket(ticketNumber: Int) -> Bool {
    
    let ticketNumberArray: [Int] = String(describing: ticketNumber).compactMap { Int(String($0)) }
    let halfTicketNumber = ticketNumberArray.count / 2
    let ticketNumberHead = ticketNumberArray[0 ..< halfTicketNumber]
    let ticketNumberTail = ticketNumberArray[halfTicketNumber ..< ticketNumberArray.endIndex]
    
    return ticketNumberHead.reduce(0, +) == ticketNumberTail.reduce(0, +) ? true : false
}


