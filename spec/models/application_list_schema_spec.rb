=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0 beta

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for RusticiSoftwareCloudV2::ApplicationListSchema
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApplicationListSchema' do
  before do
    # run before each test
    @instance = RusticiSoftwareCloudV2::ApplicationListSchema.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApplicationListSchema' do
    it 'should create an instact of ApplicationListSchema' do
      expect(@instance).to be_instance_of(RusticiSoftwareCloudV2::ApplicationListSchema)
    end
  end
  describe 'test attribute "applications"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

