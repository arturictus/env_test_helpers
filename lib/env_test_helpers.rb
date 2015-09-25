require "env_test_helpers/version"

module EnvTestHelpers
  # it 'does something with the FOO environment variable' do
  #   with_env_vars 'FOO' => 'bar' do
  #     # logic that depends upon ENV['FOO'] goes here
  #   end
  # end
  def with_env_vars(vars)
    original = ENV.to_hash
    vars.each { |k, v| ENV[k] = v }
    begin
      yield
    ensure
      ENV.replace(original)
    end
  end
  # describe Thing do
  #   before(:all) do
  #     mock_env_vars('FOO' => 'bar')
  #   end
  #   it 'does something with the FOO environment variable' do
  #     # logic that depends upon ENV['FOO'] goes here
  #   end
  # end
  def mock_env_vars(vars)
    vars.each do |k, v|
      allow(ENV).to receive(:[]).with(k).and_return(v)
    end
  end
end

if defined? RSpec
  RSpec.configure do |c|
    c.include EnvTestHelpers
  end
end
