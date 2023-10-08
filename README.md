# UtilityClasses

**You probably should NOT use this gem. The preferred method for accomplishing something similar is to use the `@apply` directive instead (if using TailwindCSS.) This gem will no longer be receiving updates.**

Rails gem that facilitates the use of utility CSS frameworks.

This project was inspired by the [classy-yaml](https://github.com/Tonksthebear/classy-yaml) project.

## Usage

You can easily define a base class list for a given type:

```yaml
# config/utility_classes.yml

heading:
  base: 'text-lg font-semibold text-center'
```

And then retrieve the class list in your code:

```ruby
UtilityClasses.for(:heading)
# "text-lg font-semibold text-center"
```

You can optionally define variants for each type:

```yaml
# config/utility_classes.yml

heading:
  base: 'font-semibold text-center'
  variants:
    normal: 'text-lg'
    large: 'text-2xl'
    xlarge: 'text-4xl'
```

And then retrieve the class list by passing the variant key:

```ruby
UtilityClasses.for(:heading, variant: :large)
# "font-semibold text-center text-2xl"
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

If you are using TailwindCSS, ensure that your configuration lists the  `utility_classes.yml` file.

`webpacker` approach:

```javascript
// tailwind.config.js

module.exports = {
  purge: [
    './app/**/**.html.erb',
    './config/utility_classes.yml' // add this line
  ],
  theme: {},
  variants: {},
  plugins: [],
}
```

`tailwindcss-rails` approach:

```ruby
# add to your `config/environments/production.rb` file

config.assets.css_compressor = :purger
config.assets.css_compressor = Tailwindcss::Compressor.new(
  files_with_class_names: Rails.root.glob('app/views/**/*.*') + Rails.root.glob('config/utility_classes.yml')
)
```

## Contributing

Contributions are welcome. Feel free to open a PR.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
