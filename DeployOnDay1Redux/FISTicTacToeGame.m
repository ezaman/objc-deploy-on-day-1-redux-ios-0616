//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"

@interface FISTicTacToeGame ()


@end


@implementation FISTicTacToeGame

-(instancetype)init
{
    self = [super init];
    if(self) {
        
        [self resetBoard];
        
        // Do initialization of your game here, inside this if statement.
        // Leave the rest of this method alone :)
        
    }
    
    return self;
}

-(void)resetBoard{
    
    NSArray *row1 = @[@"", @"", @""];
    NSArray *row2 = @[@"", @"", @""];
    NSArray *row3 = @[@"", @"", @""];
    
    NSArray *ticTacToe = @[ [row1 mutableCopy],
                            [row2 mutableCopy],
                            [row3 mutableCopy]];
    
    self.board = [ticTacToe mutableCopy];
}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    
    return self.board[column][row];
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    
    if ([self.board[column][row] isEqualToString:@""]){
        
        return YES;
    }
    else {
        return NO;
    }
}



-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    BOOL empty = [self canPlayAtColumn:column row:row];
    
    if (empty == YES) {
        self.board [column][row] = @"X";
    }
    
}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    BOOL empty = [self canPlayAtColumn:column row:row];

    
    if (empty == YES) {
        self.board [column][row] = @"O" ;
        
    }
}

-(NSString *)winningPlayer
{
  // ROWS
    
    ////// 1st row
    if ([self.board [0][0] isEqualToString: self.board[0][1]] && [self.board[0][0] isEqualToString:self.board [0][2]]) {
        return self.board [0][0];}
    
   ////// 2nd row
    if ([self.board [1][0] isEqualToString: self.board[1][1]] && [self.board[1][0] isEqualToString:self.board [1][2]]) {
        return self.board [1][0];}
   ///// 3rd row
    if ([self.board [2][0] isEqualToString: self.board[2][1]] && [self.board[2][0] isEqualToString:self.board [2][2]]) {
        return self.board [2][0];}
//COLUMNS
    
   ///// 1st column
        if ([self.board [0][0] isEqualToString: self.board[1][0]] && [self.board[0][0] isEqualToString:self.board [2][0]]) {
            return self.board [0][0];}
   ///// 2nd column
        if ([self.board [0][1] isEqualToString: self.board[1][1]] && [self.board[0][1] isEqualToString:self.board [2][1]]) {
            return self.board [0][1];}
   ///// 2nd column
        if ([self.board [0][2] isEqualToString: self.board[1][2]] && [self.board[0][2] isEqualToString:self.board [2][2]]) {
                return self.board [0][2];
        }
            
// DIAGONALS
            
   //// 1st Diagonal
        if ([self.board [0][0] isEqualToString: self.board[1][1]] && [self.board[0][0] isEqualToString:self.board [2][2]]) {
                return self.board [0][0];
        }
  //// 2nd Diagonal
        if ([self.board [0][2] isEqualToString: self.board[1][1]] && [self.board[0][2] isEqualToString:self.board [2][0]]) {
                return self.board [0][2];
            
        }
    
        
        return @"";
    }

            
-(BOOL)isADraw
    {
        BOOL fullBoard = YES;
        
        for (NSUInteger i = 0; i < 3; i++) {
            for (NSUInteger a = 0; a < 3; a++) {
                if ([self.board [i][a] isEqualToString:@""]){
                    fullBoard = NO;
                }
            }
        }
        
        return fullBoard;
        
    }
    
    @end

