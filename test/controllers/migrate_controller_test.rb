require 'test_helper'

class MigrateControllerTest < ActionDispatch::IntegrationTest
  test "should get projects" do
    get migrate_projects_url
    assert_response :success
  end

  test "should get files" do
    get migrate_files_url
    assert_response :success
  end

end
