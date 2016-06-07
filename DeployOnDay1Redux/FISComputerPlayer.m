//
//  FISComputerPlayer.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISComputerPlayer.h"

@implementation FISComputerPlayer

+(BOOL)isEnabled

{
    return YES;
}

-(FISTicTacToePosition)nextPlay
{
    
    NSUInteger column;
    NSUInteger row ;
    
    do{
        column = arc4random_uniform(3);
        row = arc4random_uniform(3);
        
    }
    
    while (![self.game canPlayAtColumn:column row:row]);
    return FISTicTacToePositionMake(column, row);
        
    }

    
//    NSArray *row1 = @[@"", @"", @""];
//    NSArray *row2 = @[@"", @"", @""];
//    NSArray *row3 = @[@"", @"", @""];
//    
//    NSArray *board = [@[ [row1 mutableCopy],
//                         [row2 mutableCopy],
//                         [row3 mutableCopy]]mutableCopy];
//    
//    for (NSUInteger a = 0; a < [board count]; a++) {
//        for (NSUInteger b = 0; [board count]; b++) {
//            if ([self.game canPlayAtColumn:a row:b]) {
//                return FISTicTacToePositionMake(a,b);
//                   return FISTicTacToePositionMake(a,b);
//            }
//        }
//    }
//    


@end

