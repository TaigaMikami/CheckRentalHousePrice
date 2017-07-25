module ApplicationHelper
  def self.getHouse(room_type, num_rooms, square, floor, building_type, structure_type,floor_height)
    #uri = URI.parse('http://localhost:8080/predict?room_type/' + room_type )
    uri = URI.parse('http://localhost:8080/predict?room_type='+ room_type +'&num_rooms='+ num_rooms +'&square='+ square +'&floor='+ floor +'&building_type='+ building_type +'&structure_type='+ structure_type +'&floor_height='+ floor_height)
    #http://localhost:8080/predict?room_type=50&num_rooms=1&square=62.30&floor=3&building_type=10&structure_type=40&floor_height=8
    json = Net::HTTP.get(uri)
    userInfo = JSON.parse(json)
    # User.new(userInfo['result'])
    userInfo["result"]
  end
end
