class WelcomeController < UIViewController

  class << self
    def controller
      @controller ||= WelcomeController.alloc.initWithNibName(nil, bundle: nil)
    end
  end

  def viewDidLoad
    super

    self.title = "Welcome!"
    self.view.backgroundColor = UIColor.whiteColor

    @container_view = UIView.alloc.initWithFrame([[0, 70], [self.view.frame.size.width, 100]])

    @welcome_title_label = UILabel.alloc.initWithFrame([[10, 10], [self.view.frame.size.width - 20, 20]])
    @welcome_title_label.font = UIFont.boldSystemFontOfSize(20)
    @welcome_title_label.text = "Welcome! You'll love it here!"

    @container_view.addSubview(@welcome_title_label)

    @welcome_label = UILabel.alloc.initWithFrame([[10, 35], [self.view.frame.size.width - 20, 20]])
    @welcome_label.text = "Please select an option!"

    @container_view.addSubview(@welcome_label)

    @register_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @register_button.frame = [[10, 65], [(self.view.frame.size.width / 2) - 15, 40]]
    @register_button.setTitle("Register", forState: UIControlStateNormal)
    @register_button.addTarget(self, action:'register', forControlEvents: UIControlEventTouchUpInside)

    @container_view.addSubview(@register_button)
   
   @login_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @login_button.frame = [[(self.view.frame.size.width  / 2) + 5, 65], [(self.view.frame.size.width  / 2) - 15, 40]]
    @login_button.setTitle("Login", forState: UIControlStateNormal)
    @login_button.addTarget(self, action:'login', forControlEvents: UIControlEventTouchUpInside)

    @container_view.addSubview(@login_button)

    self.view.addSubview(@container_view)

  end

  def register
    @register_controller = RegisterController.alloc.init
    self.navigationController.pushViewController(@register_controller, animated: true)
  end

  def login
    @login_controller = LoginController.alloc.init
    self.navigationController.pushViewController(@login_controller, animated: true)
  end
end