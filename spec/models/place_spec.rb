require 'rails_helper'

RSpec.describe Place, type: :model do

  describe '場所新規登録' do
    context '新規登録が上手くいく場合'
      it '内容問題無し' do
        place = build(:place)
        expect(place).to be_valid
        expect(place.errors).to be_empty
      end
    end

    context '新規登録が上手くいかない場合'

      it 'place_nameが空では登録できない' do
        place_without_placce_name = build(:place, place_name: "")
        expect(place_without_placce_name).to be_invalid
        expect(place_without_placce_name.errors[place_name]).to include("入力してください")
      end

      it 'addressが空では登録できない' do
        place_without_address = build(:place, address: "")
        expect(place_without_address).to be_invalid
        expect(place_without_address.errors[address]).to include("入力してください")
      end

      it 'latitudeが空では登録できない' do
        place_without_latitude = build(:place, latitude: "")
        expect(place_without_latitude).to be_invalid
        expect(place_without_latitude.errors[latitude]).to include("入力してください")
      end

      it 'latitudeが空では登録できない' do
        place_without_latitude = build(:place, latitude: "")
        expect(place_without_latitude).to be_invalid
        expect(place_without_latitude.errors[latitude]).to include("入力してください")
      end

      it 'longitudeが空では登録できない' do
        place_without_longitude = build(:place, longitude: "")
        expect(place_without_longitude).to be_invalid
        expect(place_without_longitude.errors[longitude]).to include("入力してください")
      end

      it 'cityが空では登録できない' do
        place_without_city = build(:place, city: "")
        expect(place_without_city).to be_invalid
        expect(place_without_city.errors[city]).to include("入力してください")
      end
    end
  end
end
