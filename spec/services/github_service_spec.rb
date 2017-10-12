require 'rails_helper'

describe GithubService do
  context "class methods" do
    context ".initialize" do
      it "returns a valid object" do
        gs = GithubService.new

        expect(gs).to be_a GithubService
      end
    end
  end
  context "instance methods" do
    let(:user_info) {GithubService.new.user_info}

    context "#user_info" do
      it "returns a valid user collection" do

          expect(user_info["id"]).to eq("something")
        end
      end

    end
  end
