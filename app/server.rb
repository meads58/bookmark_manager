require 'data_mapper'
require 'sinatra'
require 'rack-flash'
require './app/models/link'
require './app/models/tag'
require './app/models/user'
require_relative 'data_mapper_setup'
require_relative 'controller/user'
require_relative 'controller/sessions'
require_relative 'controller/links'
require_relative 'controller/tags'
require_relative 'controller/index'
require_relative 'controller/helper'

class BMarkManager < Sinatra::Base

  set :views, Proc.new { File.join(root, "views") }
  set :root, File.dirname(__FILE__)

  enable :sessions
  set :session_secret, 'super secret'
  use Rack::Flash
  use Rack::MethodOverride


  run! if app_file ==$0

end