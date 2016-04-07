//
//  ChatInputTool.m
//  IOSChatView
//
//  Created by ixshells on 16/4/5.
//  Copyright © 2016年 ixshells. All rights reserved.
//

#import "ChatInputTool.h"
#import "UIView+NSLayoutConstraint.h"
#import "NSObject+NSLayoutConstraint.h"

#define TextViewTopMargin 14/2.
#define TextViewBottomMargin 16/2.
#define TextViewContentTopMargin 6
#define TextViewContentBottomMargin 6
#define TextToolBarMinHeight TOOLBAR_HEIGHT
#define TextToolBarMaxHeight 230/2.0
#define AllMarginHeight 14 //先写死一个数据，后面改为自动适应

@interface ChatInputTool()<UITextViewDelegate>
{}

@end


@implementation ChatInputTool


-(UIButton *)switchButton
{
    if(nil == _switchButton)
    {
        _switchButton = [[UIButton alloc] init];
        _switchButton.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:_switchButton];
        
        [_switchButton setImage:[UIImage imageNamed:@"chat_voice.png"] forState:UIControlStateNormal];
        [_switchButton leadingToSuperView:10.0f];
        [_switchButton bottomToSuperView:12.5f];
        [_switchButton heightEqualTo:35.0f];
        [_switchButton widthEqualTo:35.0f];
        _switchButton.backgroundColor = [UIColor clearColor];
        
    }
    return _switchButton;
}


-(UIButton *)functionButton
{
    if(nil == _functionButton)
    {
        _functionButton = [[UIButton alloc] init];
        _functionButton.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:_functionButton];
        [_functionButton setImage:[UIImage imageNamed:@"chat_function.png"] forState:UIControlStateNormal];
        [_functionButton trailingToSuperView:10.0f];
        [_functionButton bottomToSuperView:12.5f];
        [_functionButton heightEqualTo:35.0f];
        [_functionButton widthEqualTo:35.0f];
        _functionButton.backgroundColor= [UIColor clearColor];
    }
    return _functionButton;
}


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(nil != self)
    {
        [self initView];
    }
    
    return self;
}


-(void)initView
{
    [self functionButton];
    [self switchButton];
}

@end


@implementation ChatTextTool

-(UITextView *)inputTextView
{
    if(nil == _inputTextView)
    {
        _inputTextView = [[UITextView alloc] init];
        _inputTextView.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:_inputTextView];
        [_inputTextView trailingToLeading:self.functionButton minus:10.0f];
        [_inputTextView leadingToTrailing:self.switchButton add:10.0f];
        [_inputTextView topToSuperView:7.5f];
        [_inputTextView bottomToSuperView:7.5f];
        
        _inputTextView.translatesAutoresizingMaskIntoConstraints = NO;
        _inputTextView.layer.borderColor = [UIColor greenColor].CGColor;
        _inputTextView.layer.cornerRadius = 4;
        _inputTextView.layer.borderWidth = 1;
        _inputTextView.layer.backgroundColor = [UIColor grayColor].CGColor;
        _inputTextView.showsHorizontalScrollIndicator = NO;
        _inputTextView.scrollsToTop = NO;
        _inputTextView.autocapitalizationType = UITextAutocapitalizationTypeSentences;
        _inputTextView.autocorrectionType = UITextAutocorrectionTypeDefault ;
        _inputTextView.returnKeyType = UIReturnKeySend ;
        _inputTextView.enablesReturnKeyAutomatically = YES ;
        _inputTextView.textColor = [UIColor blackColor];
        _inputTextView.textContainerInset = UIEdgeInsetsMake(TextViewContentTopMargin,
                                                        0, TextViewContentBottomMargin, 0);
        _inputTextView.delegate = self;
        
        _inputTextView.backgroundColor = [UIColor whiteColor];
    }
    return _inputTextView;
}

-(void)initView
{
    [super initView];
    
    [self inputTextView];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range
replacementText:(NSString *)text {
    
    if ( (textView.returnKeyType == UIReturnKeySend || textView.returnKeyType == UIReturnKeyDone ) && [ text isEqualToString: @"\n" ] ) {
        if (textView.text.length > 0) {
            
//            if ([self.delegate respondsToSelector:@selector(sendMessage:)]) {
//                [self.delegate sendMessage:textView.text];
//            }
            //            [self clearTextView];
            return NO;
        }
    }
    
    return YES;
}

@end