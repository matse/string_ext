# StringExt

StringExt complements the standard ruby String class with some repeatedly used methods, like String#to_bool or String#is_numeric?.

## Installation

    gem 'string_ext', git: git@github.com:matse/string_ext.git

    $ bundle

## Usage

    "foo".is_numeric? # false
    "1.23".is_numeric? # true

1,y,yes,true,t for true and 0,n,no,false,f for false available.
Otherwise raising an ArgumentError.

    "true".to_bool # true
    "false".to_bool # false

    "ü_Ö umlaut".to_url # "ue-oe-umlaut"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
