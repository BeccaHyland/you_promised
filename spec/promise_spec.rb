require "rails_helper"
#test for update promise to find bug

describe "edit a promise button" do
  it "allows user to edit a promise" do

    promise = Promise.create(description: "Bake me some cookies", giver: "Mr. Kipling")

    visit edit_promise_path(promise)

    expect(promise.status).to eq(0)
    promise.update(status: 2)
  end
end
