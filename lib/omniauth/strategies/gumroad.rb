require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Gumroad < OmniAuth::Strategies::OAuth2

      option :name, "gumroad"

      option :client_options, {
        :authorize_url => 'http://local.host:3333/oauth/authorize',
        :token_url => 'http://local.host:3333/oauth/token',
        :site => "http://local.host:3333"
      }

      def request_phase
        super
      end

      def authorize_params
        super.tap do |params|
          %w[scope client_options].each do |v|
            if request.params[v]
              params[v.to_sym] = request.params[v]
            end
          end
        end
      end

      def callback_url
        options[:redirect_uri] || super
      end

      info do
        {
          name: raw_info["user"]["name"],
          bio: raw_info["user"]["bio"],
          facebook_profile: raw_info["user"]["facebook_profile"],
          twitter_handle: raw_info["user"]["twitter_handle"],
          id: raw_info["user"]["id"]
        }
      end

      uid { raw_info['id'].to_s }

      extra do
        {:raw_info => raw_info}
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v2/user').parsed
      end
    end
  end
end

OmniAuth.config.add_camelization 'gumroad', 'Gumroad'