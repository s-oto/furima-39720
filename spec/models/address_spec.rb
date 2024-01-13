require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  describe '購入時' do
    before do
      user = FactoryBot.create(:user)
      @order_address = FactoryBot.build(:order_address, user_id: user.id)
    end

    context '内容に問題ない場合' do
      it 'すべての値が正しく入力されていれば保存できること' do
      end
      it 'building_nameは空でも保存できること' do
      end
    end

    context '内容に問題がある場合' do
      it 'postal_cordが空だと保存できないこと' do
      end
      it 'postal_cordが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
      end
      it 'prefectureを選択していないと保存できないこと' do
      end
      it 'priceが空だと保存できないこと' do
      end
      it 'priceが全角数字だと保存できないこと' do
      end
      it 'priceが1円未満では保存できないこと' do
      end
      it 'priceが1,000,000円を超過すると保存できないこと' do
      end
      it 'userが紐付いていないと保存できないこと' do
      end
    end
  end
end