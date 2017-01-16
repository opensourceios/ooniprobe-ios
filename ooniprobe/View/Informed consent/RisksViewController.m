// Part of MeasurementKit <https://measurement-kit.github.io/>.
// MeasurementKit is free software. See AUTHORS and LICENSE for more
// information on the copying conditions.

#import "RisksViewController.h"

@interface RisksViewController ()

@end

@implementation RisksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISwipeGestureRecognizer *oneFingerSwipeLeft = [[UISwipeGestureRecognizer alloc]
                                                    initWithTarget:self
                                                    action:@selector(next)] ;
    [oneFingerSwipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [[self view] addGestureRecognizer:oneFingerSwipeLeft];
    
    UISwipeGestureRecognizer *oneFingerSwipeRight = [[UISwipeGestureRecognizer alloc]
                                                     initWithTarget:self
                                                     action:@selector(previous)] ;
    [oneFingerSwipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [[self view] addGestureRecognizer:oneFingerSwipeRight];
    

    [self.titleLabel setText:NSLocalizedString(@"know_the_risks", nil)];
    [self.nextButton setTitle:[NSString stringWithFormat:@"   %@   ", NSLocalizedString(@"i_understand", nil)] forState:UIControlStateNormal];
        
    NSMutableAttributedString *muAtrStr = [[NSMutableAttributedString alloc] initWithString:NSLocalizedString(@"risks_text_1", nil) attributes:@{NSForegroundColorAttributeName : color_ooni_blue}];
    NSAttributedString *atrStr = [[NSAttributedString alloc]initWithString:[NSString stringWithFormat:@"\n\n%@", NSLocalizedString(@"risks_text_2", nil)] attributes:@{NSForegroundColorAttributeName : color_off_black}];
    NSAttributedString *atrStr2 = [[NSAttributedString alloc]initWithString:[NSString stringWithFormat:@"\n\n%@", NSLocalizedString(@"risks_text_3", nil)] attributes:@{NSForegroundColorAttributeName : color_off_black}];
    [muAtrStr appendAttributedString:atrStr];
    [muAtrStr appendAttributedString:atrStr2];
    [self.textLabel setAttributedText:muAtrStr];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)next{
    [self performSegueWithIdentifier:@"toLaws" sender:self];
}

-(void)previous{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
