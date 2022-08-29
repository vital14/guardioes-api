require 'rails_helper'

RSpec.describe SurveysController, type: :controller do

  let(:valid_attributes) {
    skip('Add a hash of attributes valid for your model')
  }

  let(:invalid_attributes) {
    skip('Add a hash of attributes invalid for your model')
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FormAnswersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #count_symptoms' do
    context 'when symptom is found' do
      it 'returns a valid quantity message' do
        FactoryBot.create(:user)
        survey = {
          user_id: user.id,
          symptom: 'tosse'
        }
        get 'surveys/count_symptoms', params: { symptom: 'tosse' }, session: valid_session
        expect(response).to eq('Você sentiu tosse por 1 dia')
      end
    end
    context 'when symptom is not found' do
      it 'returns a symptom not found message' do
        get 'surveys/count_symptoms', params: { symptom: 'nausea' }, session: valid_session
        expect(response).to eq('Sintoma nausea nao encontrado')
      end
    end
  end
end
