//
//  TicketHolder.swift
//  Alpha-Wallet
//
//  Created by Oguzhan Gungor on 2/25/18.
//  Copyright © 2018 Alpha-Wallet. All rights reserved.
//

import Foundation

class TicketHolder {
    var tickets: [Ticket]
    var zone: String
    var name: String
    var venue: String
    var date: Date

    init(
        tickets: [Ticket],
        zone: String,
        name: String,
        venue: String,
        date: Date
    ) {
        self.tickets = tickets
        self.zone = zone
        self.name = name
        self.venue = venue
        self.date = date
    }
    
    var seatRange: String {
        let seatIds = tickets.map { $0.seatId }
        if seatIds.count == 1 {
            return seatIds.first!.toString()
        }
        return seatIds.min()!.toString() + "-" + seatIds.max()!.toString()
    }

    var ticketCount: String {
        return tickets.count.toString()
    }

}
