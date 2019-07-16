require "rails-helper"

RSpec.describe "", :type => :request do

  it "" do


allow_any_instance_of(ApplicationController).to receive(:authorize).and_return(true)
