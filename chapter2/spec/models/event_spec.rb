require 'rails_helper'
require 'spec_helper'
# RSpec.describe Event, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

# Rspecの記述
RSpec.describe Event, :type => :model do
    describe '#name' do
        context '空白のとき' do
            
            let(:event){Event.new(name:'')}
            
            it 'validでないこと' do
                event.valid?
                expect(event.errors[:name]).to be_present
            end
        end
        
        context 'nilのとき' do
            let(:event){Event.new(name:nil)}
            
            it 'validでないこと' do
                event.valid?
                expect(event.errors[:name]).to be_present
            end
        end
        
        context 'Rails勉強会のとき' do
            let(:event){Event.new(name:'Rails勉強会')}
            
            it 'validであること' do
                event.valid?
                expect(event.errors[:name]).to be_blank
            end
        end
        
        context '50文字のとき'
            let(:event){Event.new(name:'a'*50)}
            
            it 'validであること' do
                event.valid?
                expect(event.errors[:name]).to be_blank
            end
        end
        
        context '51文字のとき' do
            let(:event){Event.new(name:'a'*51)}
            it 'validでないこと' do
                event.valid?
                expect(event.errors[:name]).to be_present
            end
        end
    
end



# Rspec+shouldaの記述
    RSpec.describe Event, :type => :model do
        describe '#name' do
            it {is_expected.to validate_presence_of(:name)}
            it {should ensure_length_of(:name).is_at_most(50)}
        end
    end

#Rspec+FactoryGirlの記述/教科書よりテストケースを自分用に変更??????
    RSpec.describe Event, :type => :model do
        describe '#created_by?' do
            let(:event){create(:event)}
            subject{event.valid?}
            
            
            # context '引数がnilのとき' do
            #     let(:name){nil}
            #     it {should be_falsey}
            # end
            
            # context '#owner_idと引数の#idが同じとき' do
            #     let(:name){double('user', id: event.id)}
            #     it {should be_truty}
            # end
        end
    end
