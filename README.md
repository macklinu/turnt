# turnt

[![Build Status](https://travis-ci.org/macklinu/turnt.svg)](https://travis-ci.org/macklinu/turnt)

_Like hype for a party, or at the club!  -[Urban Dictionary](http://www.urbandictionary.com/define.php?term=Turnt&defid=4396644)_

Commit as a pair in the most exciting way possible.

## Setup

```
gem install turnt
```

Add a `.pairs.yaml` to the root of your working directory.

```yaml
:pairs:
  -
    :name:   FULL_NAME
    :github: GITHUB_USERNAME
    :email:  GIT_EMAIL_ADDRESS
```

Example:

```yaml
:pairs:
  -
    :name:   Macklin Underdown
    :github: macklinu
    :email:  macklin@email.com
  -
    :name:   David Klawitter
    :github: davidklaw
    :email:  david@email.com
```

## Usage

### Start pairing

```
$ turn up --with macklinu
$ turn up -w macklinu
```

### Stop pairing

```
$ turn down
$ turn down --for-what
```

## Development

TODO

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/macklinu/turnt. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

