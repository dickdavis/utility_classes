# UtilityClasses

Rails gem that facilitates the use of utility CSS frameworks.

This project was inspired by the [classy-yaml](https://github.com/Tonksthebear/classy-yaml) project.

## Usage

You can easily define a base class list for a given type:

`config/utility_classes.yml`
```yaml
heading:
  base: 'text-lg font-semibold text-center'
```

And then retrieve the class list in your code:

```ruby
UtilityClasses.for(:heading)
```

You can optionally define variants for each type:

`config/utility_classes.yml`
```yaml
heading:
  base: 'text-lg font-semibold text-center'
  variants:
    grande: 'text-4xl'
```

And then retrieve the class list by passing the variant key:

```ruby
UtilityClasses.for(:heading, variant: :grande)
```

The returned string will contain the base classes with the variant classes appended.

The `config/utility_classes.yml` file will be loaded into memory the first time it is called and only be reloaded if changes are made to the file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'utility_classes'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install utility_classes
```

Run the install generator to create a config file (`config/utility_classes.yml`):

```bash
$ bin/rails generate utility_classes:install
```

Add your classes to the generated config file following the structure of the examples.

## Contributing

Contributions are welcome. Feel free to open a PR.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
