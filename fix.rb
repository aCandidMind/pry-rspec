Pry::Commands.create_command "fix" do

  def process
    described_method = target.eval('self.class.metadata[:full_description]')
    run "edit #{described_method}"
    run "try-again"
  end
end
