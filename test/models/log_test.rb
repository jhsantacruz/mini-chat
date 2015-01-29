require "test_helper"

describe Log do
  let(:log) { Log.new }

  it "must be valid" do
    log.must_be :valid?
  end
end
