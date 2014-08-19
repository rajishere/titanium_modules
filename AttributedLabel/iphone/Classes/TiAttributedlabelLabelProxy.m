/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiAttributedlabelLabelProxy.h"
#import "TiUtils.h"

@implementation TiAttributedlabelLabelProxy


-(void)viewDidAttach
{
    [(TiAttributedlabelLabel*)[self view] createView];
    
}

-(void)setHtml:(id)value{
    NSString *_htmlString = [TiUtils stringValue:value];
    [(TiAttributedlabelLabel*)[self view] setHtml_:_htmlString];
}

-(void)setColor:(id)value{
    UIColor *_color = [[TiUtils colorValue:value] _color];
    [(TiAttributedlabelLabel*)[self view] setColor_:_color];
}

@end
