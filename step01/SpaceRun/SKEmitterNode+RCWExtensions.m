/***
 * Excerpted from "Build iOS Games with Sprite Kit",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/pssprite for more book information.
***/
#import "SKEmitterNode+RCWExtensions.h"

@implementation SKEmitterNode (RCWExtensions)

+ (SKEmitterNode *)rcw_nodeWithFile:(NSString *)filename
{
    NSString *basename = [filename stringByDeletingPathExtension];
    NSString *extension = [filename pathExtension];
    if ([extension length] == 0) {
        extension = @"sks";
    }
    NSString *path = [[NSBundle mainBundle] pathForResource:basename ofType:@"sks"];
    SKEmitterNode *node = (id)[NSKeyedUnarchiver unarchiveObjectWithFile:path];
    return node;
}

@end
