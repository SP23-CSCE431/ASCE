require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'harry potter')
        described_class.new(author: 'J.K. Rowling')
        described_class.new(price: '20.0')
        described_class.new(published_date: '2001-11-14')
    end

    it 'is valid with valid attributes' do
        subject.title = 'harry potter'
        subject.author = 'J.K. Rowling'
        subject.price = '20.0'
        expect(subject).to be_valid
    end

    it 'is valid with a title' do
        subject.title = 'harry potter'
        subject.author = 'J.K. Rowling'
        subject.price = '20.0'
        expect(subject).to be_valid
    end

    it 'is not valid without a name' do
        subject.title = nil
        expect(subject).not_to be_valid
    end

    it 'is valid with an author' do
        subject.title = 'harry potter'
        subject.author = 'J.K. Rowling'
        subject.price = '20.0'
        expect(subject).to be_valid
    end

    it 'is not valid without an author' do
        subject.author = nil
        expect(subject).not_to be_valid
    end

    it 'is valid with a price' do
        subject.title = 'harry potter'
        subject.author = 'J.K. Rowling'
        subject.price = '20.0'
        expect(subject).to be_valid
    end

    it 'is not valid without a price' do
        subject.price = nil
        expect(subject).not_to be_valid
    end

    it 'is valid with a published_date' do
        subject.title = 'harry potter'
        subject.author = 'J.K. Rowling'
        subject.price = '20.0'
        expect(subject).to be_valid
    end

    it 'is not valid without a published_date' do
        subject.published_date = nil
        expect(subject).not_to be_valid
    end
end