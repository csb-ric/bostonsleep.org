# frozen_string_literal: true

require 'test_helper'

# Assure that external pages load.
class ExternalControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get home_url
    assert_response :success
  end

  test 'should get publications' do
    get publications_url
    assert_response :success
  end

  test 'should get services' do
    get services_url
    assert_response :success
  end

  test 'should get contact' do
    get contact_url
    assert_response :success
  end

  test 'should submit contact' do
    post submit_contact_url, params: {
      name: 'Name', email: 'email@example.com',
      comments: "Hi\nThis is my message.\nThanks!"
    }
    assert_redirected_to thanks_path
  end

  test 'should not submit contact without required fields' do
    post submit_contact_url, params: {
      name: '', email: 'email@example.com',
      comments: "Hi\nThis is my message.\nThanks!"
    }
    assert_template 'contact'
    assert_response :success
  end

  test 'should get thanks' do
    get thanks_url
    assert_response :success
  end

  test 'should get sitemap xml file' do
    get sitemap_xml_url
    assert_response :success
  end

  test 'should get version' do
    get version_url
    assert_response :success
  end

  test 'should get version as json' do
    get version_url(format: 'json')
    version = JSON.parse(response.body)
    assert_equal BostonSleepOrg::VERSION::STRING, version['version']['string']
    assert_equal BostonSleepOrg::VERSION::MAJOR, version['version']['major']
    assert_equal BostonSleepOrg::VERSION::MINOR, version['version']['minor']
    assert_equal BostonSleepOrg::VERSION::TINY, version['version']['tiny']
    assert_equal BostonSleepOrg::VERSION::BUILD, version['version']['build']
    assert_response :success
  end
end
