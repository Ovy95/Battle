feature "Attacking" do 
  scenario 'attack Player 2' do 
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end 

  scenario "Player 2 attacked , loses 10 hp " do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Mittens 50HP"
  end
end