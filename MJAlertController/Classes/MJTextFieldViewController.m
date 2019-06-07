//
//  MJTextFieldViewController.m
//  LCAlertController
//
//  Created by manjiwang on 2019/6/6.
//

#import "MJTextFieldViewController.h"
#import "Masonry.h"

@interface MJTextFieldViewController ()
@property (nonatomic, copy) NSString * placeholder;
@end

@implementation MJTextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (instancetype)initWithTitle:(nullable NSString *)title placeholder:(nullable NSString *)placeholder buttons:(nullable NSArray *)buttons tapBlock:(nullable MJAlertControllerCompletionBlock)tapBlock {
    self = [super initWithTitle:title buttons:buttons tapBlock:tapBlock];
    if (self) {
        _placeholder = placeholder;
    }
    return self;
}

- (void)initContentView {
    [super initContentView];
    if (self.textField) {
        [self addTextField];
    }
}

- (CGFloat)horizontalEdge {
    return 50;
}

- (void)addTextField {
    if (_placeholder) {
        self.textField.placeholder = _placeholder;
    }
    [self.contentView addSubview:self.textField];
    CGFloat topSpace = self.titleHeight > 0 ? 15 : 44;
    CGFloat bottomSpace = self.titleHeight > 0 ? 15 : 33;
    [self.textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.contentView.mas_left).mas_offset(25);
        make.right.mas_equalTo(self.contentView.mas_right).mas_offset(-25);
        make.height.mas_equalTo(30);
        make.top.mas_equalTo(self.contentView.mas_top).mas_offset(15 + topSpace);
        make.bottom.mas_equalTo(self.contentView.mas_bottom).mas_offset(- 15 -bottomSpace);
    }];
}

- (UITextField *)textField {
    if (!_textField) {
        _textField = ({
            UITextField *textField = [[UITextField alloc] init];
            textField.font = [UIFont systemFontOfSize:14];
            textField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1.0];
            textField.borderStyle = UITextBorderStyleRoundedRect;
            textField;
        });
    }
    return _textField;
}

@end
