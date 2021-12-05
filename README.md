# UtilityClasses


## Usage

You can easily retrieve a class list for a defined type.

```yaml
heading:
  base: 'text-lg font-semibold text-center'
```

```ruby
UtilityClasses.for(:heading)
```

You can define variants for the type and access them as such:

```yaml
heading:
  base: 'text-lg font-semibold text-center'
  variants:
    grande: 'text-4xl'
```

```ruby
UtilityClasses.for(:heading, variant: :grande)
```

The returned string will contain the base classes with the variant classes appended.

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
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
