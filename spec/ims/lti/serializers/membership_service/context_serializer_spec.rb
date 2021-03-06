require 'spec_helper'

module IMS::LTI::Serializers::MembershipService
  describe ContextSerializer do
    it 'serializes the right set of attributes' do
      expected_attributes = [:id, :name, :type, :context_id, :membership]
      expect(ContextSerializer.attributes).to match_array expected_attributes
    end

    it 'has the right options set for the id attribute' do
      expected_options = {
        optional: false,
        key: :@id,
        has_serializable: false,
        has_list_of_serializables: false
      }
      expect(ContextSerializer.options_for_attribute(:id)).to eq expected_options
    end

    it 'has the right options set for the name attribute' do
      expected_options = {
        optional: false,
        key: nil,
        has_serializable: false,
        has_list_of_serializables: false
      }
      expect(ContextSerializer.options_for_attribute(:name)).to eq expected_options
    end

    it 'has the right options set for the type attribute' do
      expected_options = {
        optional: false,
        key: :@type,
        has_serializable: false,
        has_list_of_serializables: false
      }
      expect(ContextSerializer.options_for_attribute(:type)).to eq expected_options
    end

    it 'has the right options set for the context_id attribute' do
      expected_options = {
        optional: false,
        key: :contextId,
        has_serializable: false,
        has_list_of_serializables: false
      }
      expect(ContextSerializer.options_for_attribute(:context_id)).to eq expected_options
    end

    it 'has the right options set for the membership attribute' do
      expected_options = {
        optional: false,
        key: nil,
        has_serializable: false,
        has_list_of_serializables: true
      }
      expect(ContextSerializer.options_for_attribute(:membership)).to eq expected_options
    end
  end
end

