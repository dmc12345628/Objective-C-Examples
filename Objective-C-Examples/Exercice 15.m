//
//  Exercice 15.m
//  Objective-C-Examples
//
//  Created by Jesus Daniel Medina Cruz on 04/02/2018.
//  Copyright © 2018 Jesus Daniel Medina Cruz. All rights reserved.
//

#import "Exercice 15.h"
/*
@implementation SampleClass

- (double *) getMoyenneOfColumns:(double [][20])multidimensionalArray withLines:(int *)lines andColumns:(int *)columns {
    static double result[50];
    
    for (int i = 0; i < *columns; i++) {
        double total = 0;
        
        for (int j = 0; j < *lines; j++) {
            total += multidimensionalArray[j][i];
        }
        result[i] = total / *lines;
    }
    
    return result;
}

- (double *) getMoyenneOfLines:(double [][20])multidimensionalArray withLines:(int *)lines andColumns:(int *)columns {
    static double result[50];
    
    for (int i = 0; i < *lines; i++) {
        double total = 0;
        
        for (int j = 0; j < *columns; j++) {
            total += multidimensionalArray[j][i];
        }
        result[i] = total / *columns;
    }
    
    return result;
}

- (struct Diagonals *) getMoyenneOfDiagonals:(double [][20])multidimensionalArray withLines:(int *)lines andColumns:(int *)columns {
    
    // left diagonal
    double leftTotal = 0;
    double leftValues[*columns];
    for (int i = 0; i < *columns; i++) {
        leftTotal += multidimensionalArray[i][i];
        leftValues[i] = multidimensionalArray[i][i];
    }
    double leftMoyenne = leftTotal / *lines;
    
    // right diagonal
    double rightTotal = 0;
    double rightValues[*columns];
    for (int i = 0; i < *columns; i++) {
        rightTotal += multidimensionalArray[i][i];
        rightValues[i] = multidimensionalArray[i][i];
    }
    double rightMoyenne = rightTotal / *lines;
    
    static struct Diagonals diagonals;
    diagonals.leftMoyenne = &leftMoyenne;
    diagonals.rightMoyenne = &rightMoyenne;
    diagonals.leftValues = &leftValues;
    diagonals.rightValues = &rightValues;
    
    return &diagonals;
}

- (double *) getRandomArray:(int *) count {
    static double r[10];
    int i;
    
    for (i = 0; i < *count; ++i) {
        r[i] = [[self getRandomBetween:1 to:5] doubleValue];
    }
    
    return r;
}

- (NSNumber *) getRandomBetween:(int)from to:(int)to {
    return [NSNumber numberWithDouble: from + arc4random() % (to - from + 1)];
}

@end

int main() {
    SampleClass *sampleClass = [[SampleClass alloc] init];
    
    int lines = 50;
    int columns = 20;
    
    double multidimensinalArray[lines][columns];
    
    for (int i = 0; i < lines; i++) {
        double *array = [sampleClass getRandomArray:&columns];
        
        for (int j = 0; j < columns; j++) {
            multidimensinalArray[i][j] = array[j];
        }
    }
    
    double *moyennesOfLines = [sampleClass getMoyenneOfLines:multidimensinalArray withLines:&lines andColumns:&columns];
    double *moyennesOfColumns = [sampleClass getMoyenneOfColumns:multidimensinalArray withLines:&lines andColumns:&columns];
    struct Diagonals *diagonals = [sampleClass getMoyenneOfDiagonals:multidimensinalArray withLines:&lines andColumns:&columns];
    
    for (int i = 0; i < lines; i++) {
        NSLog(@"La moyenne de la colonne %d est : %f", (i + 1), moyennesOfLines[i]);
    }
    
    for (int i = 0; i < columns; i++) {
        NSLog(@"La moyenne de la colonne %d est : %f", (i + 1), moyennesOfColumns[i]);
    }
    
    
    NSLog(@"La moyenne de diagonale gauche est : %f", diagonals->leftMoyenne);
    NSLog(@"La moyenne de diagonale droit est : %f", diagonals->rightMoyenne);
    
    for (int i = 0; i < columns; i++) {
        NSLog(@"L'element %d de diagonale gauche est : %f", (i + 1), *(diagonals->leftValues + i));
    }
    
    for (int i = 0; i < columns; i++) {
        NSLog(@"L'element %d de diagonale droit est : %f", (i + 1), *(diagonals->rightValues + i));
    }
    
    return 0;
}
 */
