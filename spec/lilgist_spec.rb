require_relative 'spec_helper'

class LilGistSpec
  describe 'lilgist' do
    let(:lilgist) { Lilgist.create(name: "add", content: "1 + 1", user_id: 1)}
    let(:user) {User.create(id: 1, name:'Alex', password: 'bit off more than he can chew', email:"hello")}
    let (:session) {{}}

    before do
      lilgist
      session[:user_id] = user.id
    end

    after do
      Lilgist.destroy_all
    end

    it 'should respond to /' do
      get '/'
      expect(last_response).to be_ok
      expect(last_response.body).to include('sleek')
    end

    it 'user model should have a lilgist.count method that works' do
      expect(user.lilgist_count).to eq(1)
    end


  end
end
