Pry::Commands.create_command "fix" do

  def process
    current_class = target.eval('self.class')
    if current_class.ancestors.include?(RSpec::Core::ExampleGroup)
      run "edit #{described_method}"
    else
      run "edit -c"
    end
    run "try-again"
  end
end
