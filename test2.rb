require 'json'
require_relative "model"


class Resident
  attr_accessor :phone, :addr

  def initialize(phone, addr)
      @phone = phone
      @addr = addr
  end
end 

json_data= '{
  "Resident": [
    {
      "phone": "12345",
      "addr":  "xxxxx"
    }, {
      "phone": "12345",
      "addr": "xxxxx"
    }, {
      "phone": "12345",
      "addr": "xxxxx"
    }
  ]
}'


data = JSON.parse(json_data)
residents = data['Resident'].map { |rd| Resident.new(rd['phone'], rd['addr']) } 
puts residents[0].phone

data = JSON.parse(json_data)
residents = data['Resident'].map { |rd| Resident.new(rd['phone'], rd['addr']) } 
puts residents[0].phone


Task