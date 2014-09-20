//
//  HonbunViewController.h
//  KoukanNote
//
//  Created by 井上ユカリ on 2014/07/05.
//  Copyright (c) 2014年 YukariInoue. All rights reserved.
//

#import "ViewController.h"

@interface HonbunViewController : ViewController<UINavigationControllerDelegate,UIImagePickerControllerDelegate,UITextViewDelegate>
{
    IBOutlet UIImageView *imageView;
    IBOutlet UITextView *textView;
}


-(IBAction)plus;

@end
