// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from map.djinni

#import "DBMapRecord+Private.h"
#import <Foundation/Foundation.h>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@implementation DBMapRecord

- (id)initWithMapRecord:(DBMapRecord *)mapRecord
{
    if (self = [super init]) {
        NSMutableDictionary *_mapTempDictionary = [NSMutableDictionary dictionaryWithCapacity:[mapRecord.map count]];
        for (id key_0 in mapRecord.map) {
            id copiedKey_0, copiedValue_0;
            copiedKey_0 = [key_0 copy];
            id value_0 = [mapRecord.map objectForKey:key_0];
            copiedValue_0 = value_0;
            [_mapTempDictionary setObject:copiedValue_0 forKey:copiedKey_0];
        }
        _map = _mapTempDictionary;
    }
    return self;
}

- (id)initWithMap:(NSDictionary *)map
{
    if (self = [super init]) {
        _map = map;
    }
    return self;
}

- (id)initWithCppMapRecord:(const MapRecord &)mapRecord
{
    if (self = [super init]) {
        NSMutableDictionary *_mapTempDictionary = [NSMutableDictionary dictionaryWithCapacity:mapRecord.map.size()];
        for (const auto & cppPair_0 : mapRecord.map) {
            NSString *objcKey_0 = [[NSString alloc] initWithBytes:cppPair_0.first.data()
                    length:cppPair_0.first.length()
                    encoding:NSUTF8StringEncoding];
            NSNumber *objcValue_0 = [NSNumber numberWithLongLong:cppPair_0.second];
            [_mapTempDictionary setObject:objcValue_0 forKey:objcKey_0];
        }
        _map = _mapTempDictionary;
    }
    return self;
}

- (MapRecord)cppMapRecord
{
    std::unordered_map<std::string, int64_t> map;
    for (id objcKey_0 in _map) {
        std::string cppKey_0([objcKey_0 UTF8String], [objcKey_0 lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
        int64_t cppValue_0 = [[_map objectForKey:objcKey_0] longLongValue];
        map.emplace(std::move(cppKey_0), std::move(cppValue_0));
    }
    return MapRecord(
            std::move(map));
}

@end
