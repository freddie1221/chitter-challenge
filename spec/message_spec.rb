require 'messages'

describe Messages do

  let(:messages) { described_class }
  let(:id) { '1' }
  let(:content) { 'Hello world' }
  let(:created_at) { '2018-09-01 13:43:08.10135' }
  let(:message_object) { described_class.new(id, content, created_at) }

  describe '#self.add' do
    it 'adds a message to the database' do
      expect { messages.add(content) }.not_to raise_error
    end
  end

  describe '#self.show' do
    it 'returns an array of message objects' do
      expect(messages.show).not_to be_empty
    end
  end

  describe '#id' do
    it 'returns its id' do
      expect(message_object.id).to eq id
    end
  end

  describe '#content' do
    it 'returns its content' do
      expect(message_object.content).to eq content
    end
  end
  
  describe '#created_at' do
    it 'returns its created_at timestamp' do
      expect(message_object.created_at).to eq created_at
    end
  end

end