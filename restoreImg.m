    // situation 1: 网络图片
    NSString * webAddress = [NSString stringWithUTF8String:"http address"];
    NSURL *imageURL = [NSURL URLWithString:webAddress];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
    UIImage *image = [UIImage imageWithData:imageData];

    // situation 2: 本地图片
    UIImage *image = [UIImage imageNamed:[NSString stringWithUTF8String:"image name.png"]];
    
    // write to file
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSLog(@"write path: %@", documentsDirectory);
    
    NSString *savedImagePath = [documentsDirectory stringByAppendingPathComponent:@"custom name.png"];
    // 同名图片会被替换！
    [UIImagePNGRepresentation(image) writeToFile:savedImagePath atomically:YES];
