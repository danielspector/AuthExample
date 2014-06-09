class TasksListController < UIViewController
  class << self
    def controller
      @controller ||= TasksListController.alloc.initWithNibName(nil, bundle: nil)
    end
  end

  def viewDidLoad
    super
  end
end