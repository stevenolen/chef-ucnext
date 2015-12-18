require 'chef/resource/lwrp_base'

class Chef
  class Resource
    class UcNext < Chef::Resource::LWRPBase
      self.resource_name = :ucnext
      actions :create, :delete
      default_action :create

      attribute :name, kind_of: String, name_attribute: true
      attribute :repo, kind_of: String, default: 'https://github.com/universityofcalifornia/next.git'
      attribute :revision, kind_of: String, default: '1.0.36'
      attribute :port, kind_of: Integer, default: 3000
      attribute :run_user, kind_of: String, default: 'ucnext'
      attribute :run_group, kind_of: String, default: 'ucnext'
      attribute :db_host, kind_of: String, default: '127.0.0.1'
      attribute :db_port, kind_of: Integer, default: 3306
      attribute :db_name, kind_of: String, default: 'next' # set to name attr?
      attribute :db_user, kind_of: String, default: 'next'
      attribute :db_password, kind_of: String, default: 'tsktsk'
      attribute :es_host, kind_of: String, default: '127.0.0.1'
      attribute :es_port, kind_of: Integer, default: 9200
      attribute :es_index, kind_of: String, default: 'next'
      attribute :smtp_host, kind_of: String, default: 'localhost'
      attribute :smtp_username, kind_of: String, default: ''
      attribute :smtp_password, kind_of: String, default: ''
      attribute :deploy_path, kind_of: String, required: true
      attribute :bundler_path, kind_of: String, default: nil
      attribute :rails_env, kind_of: String, default: 'production'
      attribute :secret, kind_of: String, required: true
      attribute :shib_secret, kind_of: String, default: nil
      attribute :shib_client_name, kind_of: String, default: nil
    end
  end
end
