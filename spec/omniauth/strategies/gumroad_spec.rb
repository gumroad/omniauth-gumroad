require 'spec_helper'

describe OmniAuth::Strategies::Gumroad do
	let(:client) do
		OmniAuth::Strategies::Gumroad.new('GUMROAD_APP_KEY', 'GUMROAD_SECRET_KEY')
	end

	context "client options" do
		it "should have the correct site" do
			expect(client.options.client_options.site).to eq("https://gumroad.com")
		end

		it "should have the correct authorize url" do
			expect(client.options.client_options.authorize_url).to eq("https://gumroad.com/oauth/authorize")
		end

		it "should have the correct token url" do
			expect(client.options.client_options.token_url).to eq("https://gumroad.com/oauth/token")
		end

		it "should allow users to override the default redirect_uri if provided" do
			custom_client = OmniAuth::Strategies::Gumroad.new('GUMROAD_APP_KEY', 'GUMROAD_SECRET_KEY', client_options: { redirect_uri: "http://test.com/callback" })
			expect(custom_client.options.client_options.redirect_uri).to eq("http://test.com/callback")
		end
	end
end
