//
//  main.m
//  stanford 2
//
//  Created by Gaurav Garsa on 17/03/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
void ppi()
{
    NSString *path = @"/Desktop/git/learning/stanford 2";
    NSArray *pc = [path pathComponents];
    for(int i=0;i< [pc count];i++)
    {
        NSLog(@"%@-",[pc objectAtIndex:i]);
    }
    NSLog(@"=====================================");
}

void pid()
{
    NSString *pn = [[NSProcessInfo processInfo] processName];
    int pi = [[NSProcessInfo processInfo] processIdentifier];
    NSLog (@"Process name is %@, process number is %i", pn , pi);
    NSLog(@"=====================================");
}

void URL()
{
    NSMutableDictionary *urls=[NSMutableDictionary dictionary];
    [urls setObject:@"https://www.gmail.com" forKey:@"Gmail"];
    [urls setObject:@"https://github.com/" forKey:@"Github"];
    if([urls objectForKey:@"Gmail"])
       {
           NSLog(@"%@", [urls objectForKey:@"Gmail"]);
       }
    if([urls objectForKey:@"Github"])
    {
        NSLog(@"%@", [urls objectForKey:@"Github"]);
    }
    NSLog(@"=====================================");
}

void array()
{
    NSMutableArray *last=[NSMutableArray array];
    NSString *ls=@"Conaytus";
    NSURL *lu=[NSURL URLWithString:@"https://www.gmail.com"];
    [last addObject:ls];
    [last addObject:lu];
    for(int i=0;i< [last count];i++)
    {
        NSLog(@"The name of the class is %@",[[last objectAtIndex:i] className]);
        if([[last objectAtIndex:i] isKindOfClass:[NSString class]])
        {
            NSLog(@"Is a kind of NSString:YES");
        }
        else
        {
            NSLog(@"Is a kind of NSStirng:NO");
        }
        if([[last objectAtIndex:i] isMemberOfClass:[NSString class]])
        {
            NSLog(@"Is a member of NSString:YES");
        }
        else
        {
            NSLog(@"Is a member of NSStirng:NO");
        }
        if([[last objectAtIndex:i] respondsToSelector:@selector(lowercaseString)])
        {
            NSLog(@"Responds to lowercasestring :YES");
            NSLog(@"the output is %@", [[last objectAtIndex:i] lowercaseString]);
        }
        else
        {
            NSLog(@"Responds to lowercasestring :NO");
        }
        NSLog(@"-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/");
    }
    NSLog(@"=====================================");    
}

int main (int argc, const char * argv[]) {

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    ppi();
    pid();
    URL();
    array();
    // insert code here...
    NSLog(@"Hello, World!");
    [pool drain];
    return 0;
}

