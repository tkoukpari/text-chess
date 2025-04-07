#import "ChessWrapper.h"
#include "chess.hpp"

@interface ChessWrapper () {
    Chess* _chess;
}
@end

@implementation ChessWrapper

- (instancetype)init {
    self = [super init];
    if (self) {
        _chess = new Chess();
    }
    return self;
}

- (void)dealloc {
    delete _chess;
}

- (NSString *)move:(NSString *)input {
    std::string cppInput = [input UTF8String];
    std::string result = _chess->move(cppInput);
    return [NSString stringWithUTF8String:result.c_str()];
}

@end 