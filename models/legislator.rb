class Legislator
  include Api::Model
  publicly :queryable, :searchable

  basic_fields :govtrack_id, :bioguide_id,
      :title, :first_name, :nickname, :last_name, :name_suffix, 
      :state, :party, :chamber, :district

  search_fields :first_name, :last_name, :middle_name, :nickname


  include Mongoid::Document
  include Mongoid::Timestamps

  index bioguide_id: 1
  index govtrack_id: 1
  index in_office: 1
  index chamber: 1
  index thomas_id: 1
end