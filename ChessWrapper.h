#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChessWrapper : NSObject

- (instancetype)init;
- (NSString *)move:(NSString *)input;

@end

NS_ASSUME_NONNULL_END 