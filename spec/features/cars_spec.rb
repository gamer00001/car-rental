require 'rails_helper'
RSpec.describe 'Car' do
    context 'context' do
        before do
            book = Car.create(name:'Mercedes Benz C class', number:'LEM-315',model: "2015", price: 500)
            visit '/'
        end
        it 'display a list of cars with the car name and specification' do
            expect(page).to have_text('Mercedes Benz C class')
            expect(page).to have_text('LEM-315')
            expect(page).to have_link('New Car')
        end
    end 
end 