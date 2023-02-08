require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'harry potter'
        fill_in "book[author]", with: 'J.K. Rowling'
        fill_in "book[price]", with: '20.0'
        fill_in "book[published_date]", with: '2001-11-14'
        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created')
    end

    scenario 'invalid inputs' do
        visit new_book_path
        fill_in "book[title]", with: ''
        click_on 'Create Book'
        expect(page).to have_content('Title can\'t be blank')
    end

    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'harry potter'
        fill_in "book[author]", with: 'J.K. Rowling'
        fill_in "book[price]", with: '20.0'
        fill_in "book[published_date]", with: '2001-11-14'
        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created')
    end

    scenario 'invalid inputs' do
        visit new_book_path
        fill_in "book[author]", with: ''
        click_on 'Create Book'
        expect(page).to have_content('Author can\'t be blank')
    end

    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'harry potter'
        fill_in "book[author]", with: 'J.K. Rowling'
        fill_in "book[price]", with: '20.0'
        fill_in "book[published_date]", with: '2001-11-14'
        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created')
    end

    scenario 'invalid inputs' do
        visit new_book_path
        fill_in "book[price]", with: ''
        click_on 'Create Book'
        expect(page).to have_content('Price can\'t be blank')
    end

    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'harry potter'
        fill_in "book[author]", with: 'J.K. Rowling'
        fill_in "book[price]", with: '20.0'
        fill_in "book[published_date]", with: '2001-11-14'
        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created')
    end

    scenario 'invalid inputs' do
        visit new_book_path
        fill_in "book[published_date]", with: ''
        click_on 'Create Book'
        expect(page).to have_content('Published date can\'t be blank')
    end
end