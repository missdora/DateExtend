DateExtend
==========

extend function for NSDate

objective-c的日期处理不太方便, SO, 扩展了下, 用起来方便多了

you can 

* get year, month, day, weekOfMonth, weekOfYear, weekday, hour, minute, second ` only by one line of code `

* compare with another DateExtend variable, get day diff\ week diff\ month diff ` only by one line of code `

## init

you can get a DateExtend variable by 3 ways


```
NSCalendar *calendar = [NSCalendar currentCalendar];
NSDate *today = [[NSDate alloc] init];

1. DateExtend *date = [[DateExtend alloc] initWithCalendar:calendar];
2. DateExtend *date = [[DateExtend alloc] initWithCalendar:calendar  dateStr:@"2013-05-29" dateFormat:@"yyyy-MM-dd"];
3. DateExtend *date = [[DateExtend alloc] initWithCalendar:calendar  date:today];
```

## deal with DateExtend

* toString (return NSString *)
* diffDay (return NSInteger)
* diffWeek (return NSInteger)
* diffMonth (return NSInteger)
* dateByDayOffset (return DateExtend *)
* dateByWeekOffset (return DateExtend *)
* dateByMonthOffset (return DateExtend *)

### demo

```
    DateExtend *dateA = [[DateExtend alloc] initWithCalendar:calendar dateStr:@"2013-05-29" dateFormat:@"yyyy-MM-dd"];
    NSLog(@"date %@ year %d", [dateA toString:@"yyyy-MM-dd HH:mm:ss"], [date year]);
    NSLog(@"week of month %d", [dateA weekOfMonth]);
    NSLog(@"week of year %d", [dateA weekOfYear]);

    DateExtend *dateB = [[DateExtend alloc] initWithCalendar:calendar dateStr:@"2013-05-01" dateFormat:@"yyyy-MM-dd"];
    DateExtend *dateC = [[DateExtend alloc] initWithCalendar:calendar dateStr:@"2013-01-01" dateFormat:@"yyyy-MM-dd"];
    
    NSLog(@"day diff %d", [dateA diffDay:dateB]);
    NSLog(@"week diff %d", [dateA diffWeek:dateB]);
    NSLog(@"month diff %d", [dateA diffMonth:dateC]);
    NSLog(@"dateB add 28 days %@", [[dateB dateByDayOffset:28] toString:@"yyyy-MM-dd"]);
    NSLog(@"dateB add 4 weeks %@", [[dateB dateByWeekOffset:4] toString:@"yyyy-MM-dd"]);
    NSLog(@"dateC add 4 months %@", [[dateC dateByMonthOffset:4] toString:@"yyyy-MM-dd"]);

```