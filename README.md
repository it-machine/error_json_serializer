# JsonErrorSerializer

This gem provides a simple way to respond API errors messages with correct HTTP responces from Ruby On Rails applications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'json_error_serializer'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install json_error_serializer

## Usage

In your controller:
```ruby
respond_404
```

```ruby
respond_404('User not found')
```

Result:
HTTP 404 (Not found)
```json
{
  "status": "404",
  "message": "Not found"
}
```

```json
{
  "status": "404",
  "message": "User not found"
}
```

Available methods refer to the [wiki](https://github.com/Strollager/error_json_serializer/wiki)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Strollager/error_json_serializer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
