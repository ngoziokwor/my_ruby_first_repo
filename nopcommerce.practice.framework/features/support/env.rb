require_relative '../../features/support/world_helper'

require 'rspec'
require 'page-object'
require 'rubygems'
require 'watir-webdriver'
require 'pretty_face'
require 'fig_newton'
require 'logger'


World(PageObject::PageFactory)
World(WorldHelper)



