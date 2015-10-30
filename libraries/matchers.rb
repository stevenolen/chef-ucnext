if defined?(ChefSpec)
  def create_ucnext(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:ucnext, :create, resource_name)
  end

  def delete_ucnext(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:ucnext, :delete, resource_name)
  end
end
