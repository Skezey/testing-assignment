# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
  let(:valid_attributes) do
    {
      name: 'Crush',
      gpa: 99.1,
      student_number: 1,
      school_id: 12_432_500
    }
  end

  let(:invalid_attributes) do
    {
      name: '',
      gpa: '2',
      student_number: 'bob',
      school_id: 100
    }
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new student' do
        expect {
          post :create, params: { student: valid_attributes }
        }.to change(Student, :count).by(1)
      end
    end
  end
end
