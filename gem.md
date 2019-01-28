# `Gem`

ruby gems

```bash
# using gemfiles
1. install `xcode developer tools`
1. install `gem install bundler`
1. install `bundle install`
```

## what is it
Each gem has

* name
* version
* platform

Inside gems are the following components:

* Code (including tests and supporting utilities)
* Documentation
* gemspec

[readme](https://guides.rubygems.org/what-is-a-gem/)
```
% tree freewill
freewill/
├── bin/
│   └── freewill
├── lib/
│   └── freewill.rb
├── test/
│   └── test_freewill.rb
├── README
├── Rakefile
└── freewill.gemspec
```