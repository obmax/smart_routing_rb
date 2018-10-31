require_relative "user/rule"
require_relative "user/set"

module SmartRouting
  class User
    include Connection

    attr_reader :auth_login, :auth_password

    def initialize(options)
      @auth_login = options[:auth_login]
      @auth_password = options[:auth_password]
    end

    def rule
      @rule ||= User::Rule.new(self)
    end

    def set
      @set ||= User::Set.new(self)
    end

  end
end
