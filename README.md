# chef-ucnext

offers an `lwrp` for setting up [UCNeXt](https://github.com/universityofcalifornia/next).

## Supported Platforms

CentOS 6.x, for now.

## Usage

### ucnext::default

Instantiate a ucnext instance with this resource.  Note the defaults are commented. 

```ruby
ucnext 'default' do
  # repo 'https://github.com/universityofcalifornia/next.git'
  # revision '1.0.36'
  # port 3000
  # db_host '127.0.0.1'
  # db_port 3306
  # db_name 'next' # set to name attr?
  # db_user 'next'
  # db_password 'tsktsk'
  # es_host '127.0.0.1'
  # es_port 9200
  # es_index 'next'
  deploy_path '/var/next'
  # bundler_path nil
  # rails_env 'production'
  secret 'cookiesecretusesomethingrandom'
  # action :create
end
```

## License and Authors

Author:: Steve Nolen (technolengy@gmail.com)
