require 'rails_helper'

RSpec.describe Bookmark, type: :model do

  it {is_expected.to validate_presence_of :page_num}
  it {is_expected.to belong_to :book}
end
