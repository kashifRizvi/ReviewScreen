//
//  Protocols.swift
//  ReviewScreen
//
//  Created by Kashif on 16/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import Foundation

protocol FirstCellProtocol {
    func checkZeroStar(cell: FirstTableViewCell, ratings: Int8?)
    func checkOneStar(cell: FirstTableViewCell, ratings: Int8?)
    func checkTwoStars(cell: FirstTableViewCell, ratings: Int8?)
    func checkThreeStars(cell: FirstTableViewCell, ratings: Int8?)
    func checkFourStars(cell: FirstTableViewCell, ratings: Int8?)
}

protocol SecondCellProtocol {
    func interactionSelected(cell: SecondTableViewCell, methodName: String?)
    func interactionDeselected(cell: SecondTableViewCell)
}

protocol ThirdCellProtocol {
    
}

protocol FourthCellProtocol {
    
}

protocol FifthCellProtocol {
    
}

protocol SixthCellProtocol {
    
}

protocol SeventhCellprotocol {
    
}
