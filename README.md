pry-rspec
===
A fast TDD workflow with pry and rspec
---

Inspired by Joel Turnbull's [Debugger Driven Development](https://www.youtube.com/watch?v=4hfMUP5iTq8)

Usage
---

This is essentially just `pry-rescue` with a custom `fix` command.

- Run `rescue rspec ./spec/my_class_spec.rb`
- When one of your unit specs fails, a Pry console will open on the failing expectation.
- Run the `fix` command in Pry to open the method body of the failing method

- If the code is raising an exception, `fix` will open your editor at the line raising the exception.

Recommended usage
---

For faster iterations, use [rspec-preloader](https://github.com/victormours/rspec-preloader).

Install
---

```
gem install pry-rspec
```

or in your Gemfile

```
group :development do
  gem 'pry-rspec'
end
```

Requirements
---

In order to find which file to open and where to open it, `pry-rspec` uses the spec's description.
This means your test descriptions have to follow the convention `MyClass#my_instance_method` or `MyClass.my_class_method`.

For exemple, the following code will work:
```
describe MyClass do
  describe "#my_method" do

    it "returns :foo" do
      expect(MyClass.new.my_method).to eq :foo
    end

  end
end
```

Contributing
---
Forks and contributions welcome! This is under the MIT license.
